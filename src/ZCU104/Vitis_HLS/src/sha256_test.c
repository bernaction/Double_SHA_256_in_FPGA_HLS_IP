//#include <cstdint>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <windows.h>
#include "sha256.h"

uint32_t header[20];       // 80 bytes
uint32_t hash_result[8];   // 32 bytes
bool ap_busy_status; // Variável para a nova porta de saída

unsigned char header_bytes[80];
unsigned char hash_expected[32];

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

int main() {
  const char *header_hex =
    "0100000050120119172a610421a6c3011dd330d9df07b63616c2cc1f1cd00200"
    "000000006657a9252aacd5c0b2940996ecff952228c3067cc38d4885efb5a4ac"
    "4247e9f337221b4d4c86041b0f2b5710"; // Header com nonce

  const char *hash_py =
    "06e533fd1ada86391f3f6c343204b0d278d4aaec1c0b20aa27ba030000000000";

  // Preenche bytes do header e esperado
  hex_string_to_bytes(header_hex, header_bytes, 80);
  hex_string_to_bytes(hash_py, hash_expected, 32);

  // Converte header_bytes em words (big endian)
  for (int i = 0; i < 20; i++) {
    header[i] = ((uint32_t)header_bytes[i*4 + 0] << 0) |
                ((uint32_t)header_bytes[i*4 + 1] << 8) |
                ((uint32_t)header_bytes[i*4 + 2] << 16) |
                ((uint32_t)header_bytes[i*4 + 3] << 24);
  }

  printf("--------- TESTE DOUBLE SHA256 - CPU ---------\n");
  printf("--------- ENTRADA DE DADOS ---------\n");
  printf("Header (hex) com nonce:\n");
  for (int i = 0; i < 80; i++) {
    printf("%02x", header_bytes[i]);
  }
  printf("\n");

  // Medição de tempo
  LARGE_INTEGER start, end, freq;
  QueryPerformanceFrequency(&freq);
  QueryPerformanceCounter(&start);
  sha256_top(header, hash_result, &ap_busy_status);
  QueryPerformanceCounter(&end);

  double elapsed = (double)(end.QuadPart - start.QuadPart) / freq.QuadPart;
  double hashrate = 1.0 / elapsed;

  // Converte resultado de volta para bytes
  unsigned char hash_bytes[32];
  for (int i = 0; i < 8; i++) {
    hash_bytes[i*4 + 0] = (hash_result[i] >> 0) & 0xFF;
    hash_bytes[i*4 + 1] = (hash_result[i] >> 8) & 0xFF;
    hash_bytes[i*4 + 2] = (hash_result[i] >> 16) & 0xFF;
    hash_bytes[i*4 + 3] = (hash_result[i] >> 24) & 0xFF;
  }

  int match = 1;
  for (int i = 0; i < 32; i++) {
    if (hash_bytes[i] != hash_expected[i]) {
      match = 0;
      break;
    }
  }

  printf("\n--------- SAIDA DE DADOS ---------\n");
  printf("Double Hash (LE): ");
  for (int i = 0; i < 32; i++) printf("%02x", hash_bytes[i]);
  printf("\n");
  printf("Hash corresponde ao esperado? %s\n", match ? "SIM" : "NAO");
  printf("Tempo de execucao (preciso): %.9f segundos\n", elapsed);
  printf("Hashrate (estimado): %.2f H/s\n", hashrate);

  return 0;
}