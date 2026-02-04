#include <stdio.h>
#include <stdbool.h>
#include "sha256.h"

/*Recebe um bloco de 64 bytes (512 bits) como data[]
Expande esse bloco para 64 palavras de 32 bits (m[64])
Aplica os 64 rounds do algoritmo SHA-256 usando as constantes k[]
Atualiza state[8] com o resultado final acumulado*/
void sha256_transform(uint state[8], const uchar data[64]) {
  uint a, b, c, d, e, f, g, h, i, j, t1, t2, m[64];
  #pragma HLS ARRAY_PARTITION variable=data complete dim=1
  #pragma HLS ARRAY_PARTITION variable=m complete dim=1

  for (i = 0, j = 0; i < 16; ++i, j += 4) {
    #pragma HLS unroll
    m[i] = (data[j] << 24) | (data[j+1] << 16) | (data[j+2] << 8) | (data[j+3]);
  }

  for (; i < 64; ++i)  {
    #pragma HLS PIPELINE II=1
    m[i] = SIG1(m[i-2]) + m[i-7] + SIG0(m[i-15]) + m[i-16];
  }

  a = state[0];
  b = state[1];
  c = state[2];
  d = state[3];
  e = state[4];
  f = state[5];
  g = state[6];
  h = state[7];

  for (i = 0; i < 64; ++i) {
    #pragma HLS pipeline II=1
    t1 = h + EP1(e) + CH(e, f, g) + k[i] + m[i];
    t2 = EP0(a) + MAJ(a, b, c);
    h = g;
    g = f;
    f = e;
    e = d + t1;
    d = c;
    c = b;
    b = a;
    a = t1 + t2;
  }

  state[0] += a;
  state[1] += b;
  state[2] += c;
  state[3] += d;
  state[4] += e;
  state[5] += f;
  state[6] += g;
  state[7] += h;
}

/*Inicializa o vetor state[8] com os valores padrão do SHA-256, conforme a especificação (FIPS 180-4).
Isso prepara o estado inicial para o hashing.*/
void sha256_init(uint state[8]) {
  #pragma HLS inline
  state[0] = 0x6a09e667;
  state[1] = 0xbb67ae85;
  state[2] = 0x3c6ef372;
  state[3] = 0xa54ff53a;
  state[4] = 0x510e527f;
  state[5] = 0x9b05688c;
  state[6] = 0x1f83d9ab;
  state[7] = 0x5be0cd19;
}

/*Um vetor de entrada (header[]) e seu tamanho (len)
Um buffer interno in_data[64] (para armazenar dados parciais)
O datalen acumulado no buffer atual
O comprimento total (bitlen[2])
E o state[8] do hash em progresso*/
void sha256_update(uchar in_data[64], uint *datalen, uint bitlen[2], const uchar header[], uint len, uint state[8]) {
  for (uint i = 0; i < len; ++i) {
    //#pragma HLS PIPELINE II=1
    in_data[*datalen] = header[i];
    (*datalen)++;
    if (*datalen == 64) {
      sha256_transform(state, in_data);
      DBL_INT_ADD(bitlen[0], bitlen[1], 512);
      *datalen = 0;
    }
  }
  DBL_INT_ADD(bitlen[0], bitlen[1], (*datalen) * 8);
}




/*padding SHA-256 (bit 1, zeros até completar 56 bytes)
codificação do tamanho da mensagem (bitlen) nos últimos 8 bytes
Se ainda tiver dados no buffer (in_data), processa com sha256_transform
Extrai os 8 valores de state[8] e transforma em final_hash[32] (Big Endian)*/
void sha256_final(uchar in_data[64], uint *datalen, uint bitlen[2], uint state[8], uchar final_hash[32]) {
  uint i, j;
  i = *datalen;  
  // Padding
  if (*datalen < 56) {
    in_data[i++] = 0x80;
    while (i < 56) in_data[i++] = 0x00;
  } else {
    in_data[i++] = 0x80;
    while (i < 64) in_data[i++] = 0x00;

    sha256_transform(state, in_data);

    // Zera e prepara novo bloco
    for (j = 0; j < 56; j++) in_data[j] = 0;
    i = 56;
  }
  in_data[63] = bitlen[0];
  in_data[62] = bitlen[0] >> 8;
  in_data[61] = bitlen[0] >> 16;
  in_data[60] = bitlen[0] >> 24;
  in_data[59] = bitlen[1];
  in_data[58] = bitlen[1] >> 8;
  in_data[57] = bitlen[1] >> 16;
  in_data[56] = bitlen[1] >> 24;

  sha256_transform(state, in_data);

  // Para converter de Big Endian (state[0]) para Little Endian (final_hash)
  sha256_final_final_loop:
  for (i = 0; i < 4; ++i) {
    #pragma HLS UNROLL
    final_hash[i]     = (state[0] >> (24 - i * 8)) & 0xff;
    final_hash[i + 4] = (state[1] >> (24 - i * 8)) & 0xff;
    final_hash[i + 8] = (state[2] >> (24 - i * 8)) & 0xff;
    final_hash[i +12] = (state[3] >> (24 - i * 8)) & 0xff;
    final_hash[i +16] = (state[4] >> (24 - i * 8)) & 0xff;
    final_hash[i +20] = (state[5] >> (24 - i * 8)) & 0xff;
    final_hash[i +24] = (state[6] >> (24 - i * 8)) & 0xff;
    final_hash[i +28] = (state[7] >> (24 - i * 8)) & 0xff;
  }
}

