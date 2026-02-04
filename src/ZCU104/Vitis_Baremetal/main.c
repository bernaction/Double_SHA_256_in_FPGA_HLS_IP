#include "xil_io.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xtime_l.h"

#include <stdio.h> // para getchar(), fgets
#include <string.h>
#include "sha256.h"

// Base address do IP sha256_top_0 (mapeado via Address Editor)
#define SHA256_BASE       	0xA0000000  // s_axi_control
#define GPIO_BASE           0xA0010000// Endereços para o AXI GPIO

#define CYCLE_COUNT_READ    (GPIO_BASE + 0x0)  // Data register para leitura do contador
#define REG_CONTROL         (SHA256_BASE + 0x00) // Controle (ap_start, ap_done, ap_idle, etc.)
#define REG_HEADER_BASE     (SHA256_BASE + 0x100) // Offset inicial para os 20 registros de entrada (uint32_t[20])
#define REG_RESULT_BASE     (SHA256_BASE + 0x200) // Offset inicial para os 8 registros de saída (uint32_t[8])
#define CLOCK_HZ			250000000ULL          // Para clock em 250 MHz no PL





// Variaveis globais
uint32_t header[20];       // 80 bytes
uint32_t hash_result[8];   // 32 bytes
u64 nanos_cpu, nanos_fpga;
u64 hashrate_cpu, hashrate_fpga;
int match_cpu = 0, match_fpga = 0;
unsigned char hash_cpu[32], hash_fpga[32];
unsigned char header_bytes[80];
unsigned char hash_expected[32];
char hash_string[65];


unsigned char hex_to_byte(char a, char b) {
  unsigned char byte = 0;
  if (a >= '0' && a <= '9') byte |= (a - '0') << 4;
  else if (a >= 'a' && a <= 'f') byte |= (a - 'a' + 10) << 4;
  else if (a >= 'A' && a <= 'F') byte |= (a - 'A' + 10) << 4;

  if (b >= '0' && b <= '9') byte |= (b - '0');
  else if (b >= 'a' && b <= 'f') byte |= (b - 'a' + 10);
  else if (b >= 'A' && b <= 'F') byte |= (b - 'A' + 10);

  return byte;
}

void hex_string_to_bytes(const char *hex_str, unsigned char *bytes, int len) {
  for (int i = 0; i < len; i++) {
    bytes[i] = hex_to_byte(hex_str[i * 2], hex_str[i * 2 + 1]);
  }
}

void PS_Mining(const char *header_hex, const char *hash_real){
  hex_string_to_bytes(header_hex, header_bytes, 80);
  hex_string_to_bytes(hash_real, hash_expected, 32);

  for (int i = 0; i < 20; i++) {
    header[i] = ((uint32_t)header_bytes[i*4 + 0] << 0) |
                ((uint32_t)header_bytes[i*4 + 1] << 8) |
                ((uint32_t)header_bytes[i*4 + 2] << 16) |
                ((uint32_t)header_bytes[i*4 + 3] << 24);
  }

  XTime t1, t2;
  XTime_GetTime(&t1);
  sha256_top(header, hash_result);
  XTime_GetTime(&t2);

  nanos_cpu = (t2 - t1) * 1000000000ULL / COUNTS_PER_SECOND;
  hashrate_cpu = 1000000000ULL / nanos_cpu;

  for (int i = 0; i < 8; i++) {
    hash_cpu[i*4 + 0] = (hash_result[i] >> 0) & 0xFF;
    hash_cpu[i*4 + 1] = (hash_result[i] >> 8) & 0xFF;
    hash_cpu[i*4 + 2] = (hash_result[i] >> 16) & 0xFF;
    hash_cpu[i*4 + 3] = (hash_result[i] >> 24) & 0xFF;
  }

  match_cpu = 1;
  for (int i = 0; i < 32; i++) {
    if (hash_cpu[i] != hash_expected[i]) {
      match_cpu = 0;
      break;
    }
  }

  for (int i = 0; i < 32; i++) sprintf(&hash_string[i*2], "%02X", hash_cpu[i]);
}


void IP_Mining(const char *header_hex, const char *hash_real) {
  hex_string_to_bytes(header_hex, header_bytes, 80);
  hex_string_to_bytes(hash_real, hash_expected, 32);

  for (int i = 0; i < 20; i++) {
    header[i] = ((uint32_t)header_bytes[i*4 + 0] << 0) |
                ((uint32_t)header_bytes[i*4 + 1] << 8) |
                ((uint32_t)header_bytes[i*4 + 2] << 16) |
                ((uint32_t)header_bytes[i*4 + 3] << 24);
  }

  for (int i = 0; i < 20; i++) {
    Xil_Out32(REG_HEADER_BASE + i * 4, header[i]);
  }

  Xil_Out32(REG_CONTROL, 0x01);  				// start IP
  while ((Xil_In32(REG_CONTROL) & 0x2) == 0);   // espera ap_done

  for (int i = 0; i < 8; i++) {
    hash_result[i] = Xil_In32(REG_RESULT_BASE + i * 4);
  }

  for (int i = 0; i < 8; i++) {
    hash_fpga[i*4 + 0] = (hash_result[i] >> 0) & 0xFF;
    hash_fpga[i*4 + 1] = (hash_result[i] >> 8) & 0xFF;
    hash_fpga[i*4 + 2] = (hash_result[i] >> 16) & 0xFF;
    hash_fpga[i*4 + 3] = (hash_result[i] >> 24) & 0xFF;
  }

  match_fpga = 1;
  for (int i = 0; i < 32; i++) {
    if (hash_fpga[i] != hash_expected[i]) {
      match_fpga = 0;
      break;
    }
  }

  u32 cycles = Xil_In32(CYCLE_COUNT_READ);
  nanos_fpga = ((u64)cycles * 1000000000ULL) / CLOCK_HZ;
  hashrate_fpga = (nanos_fpga > 0) ? 1000000000ULL / nanos_fpga : 0;
}

void resultados() {
  xil_printf("\r\nIniciando Double SHA256 no CPU (Cortex-A53 arch:ARMv8-A)...");
  xil_printf("\r\nDouble Hash gerado (em LE): %s", hash_string);

  xil_printf("\r\n\nIniciando Double SHA256 no FPGA (Zynq UltraScale+ MPSoC ZCU104)...");
  xil_printf("\r\nDouble Hash gerado (em LE): %s", hash_string);

  xil_printf("\r\n\n--- COMPARATIVO ---");
  xil_printf("\r\nHash Final do bloco: %s", hash_string);
  xil_printf("\r\n[CPU]  corresponde ao esperado? %s", match_cpu ? "SIM" : "NAO");
  xil_printf("\r\n[FPGA] corresponde ao esperado? %s", match_fpga ? "SIM" : "NAO");

  xil_printf("\r\n\n--------- RESULTADOS: ---------");
  xil_printf("\r\n[CPU] Tempo de execucao (preciso): %llu.%09llu segundos (%llu ns)",
    nanos_cpu / 1000000000ULL, nanos_cpu % 1000000000ULL, nanos_cpu);
  xil_printf("\r\n[CPU] Hashrate (estimado) = (numero de hashes / tempo total): %llu H/s", hashrate_cpu);

  xil_printf("\r\n[FPGA] Tempo de execucao (preciso): %llu.%09llu segundos (%llu ns)",
    nanos_fpga / 1000000000ULL, nanos_fpga % 1000000000ULL, nanos_fpga);
  xil_printf("\r\n[FPGA] Hashrate (estimado) = (numero de hashes / tempo total): %llu H/s", hashrate_fpga);

  xil_printf("\r\n\nGanho de aceleracao comparado (CPU/FPGA) ~ %llux\r\n", nanos_cpu / nanos_fpga);
}



int main() {
  char resposta;
  char header_input[161];
  char hash_input[65];
  const char *header_hex =
    "0100000050120119172a610421a6c3011dd330d9df07b63616c2cc1f1cd00200"
    "000000006657a9252aacd5c0b2940996ecff952228c3067cc38d4885efb5a4ac"
    "4247e9f337221b4d4c86041b0f2b5710";

  const char *hash_real =
    "06e533fd1ada86391f3f6c343204b0d278d4aaec1c0b20aa27ba030000000000";

  xil_printf("\r\n--------- TESTE DOUBLE SHA256 ---------");
  xil_printf("\r\n\n--- ENTRADA DE DADOS ---");
  xil_printf("\r\nHeader (hex) com nonce:\r\n%s\r\n", header_hex);

  // Execucao
  PS_Mining(header_hex, hash_real);
  IP_Mining(header_hex, hash_real);
  resultados();
  // Pergunta se deseja novo teste
	xil_printf("\r\nDeseja testar outro bloco ao vivo? (s/n): ");
	while ((resposta = getchar()) == '\n'); // ignora ENTER

  if (resposta == 's' || resposta == 'S') {
	xil_printf("\r\n--- ENTRADA DE DADOS ---");
    xil_printf("\r\nInsira o header (hex) com nonce [160 caracteres]:\r\n");
    scanf("%160s", header_input);
    xil_printf("\r\nHeader (hex) com nonce:\r\n%s\r\n", header_input);
    xil_printf("\r\nInsira o hash esperado (LE, 64 caracteres):\r\n");
    scanf("%64s", hash_input);

    PS_Mining(header_input, hash_input);
    IP_Mining(header_input, hash_input);
    resultados();
  }

  return 0;
}

