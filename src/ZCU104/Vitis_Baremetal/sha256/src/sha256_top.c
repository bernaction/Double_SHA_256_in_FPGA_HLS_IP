#include "sha256.h"
#include <stdbool.h>
#include <stdint.h>

void sha256_top(
  volatile uint32_t *header,       // 80 bytes = 20 palavras
  volatile uint32_t *hash_result   // 32 bytes = 8 palavras
){

  unsigned char hash1[32];
  unsigned char hash2[32];
  unsigned char header_bytes[80];

  for (int i = 0; i < 20; i++) { // passar de palavras para hash total
    header_bytes[i*4 + 0] = (header[i] >>  0) & 0xFF;
    header_bytes[i*4 + 1] = (header[i] >>  8) & 0xFF;
    header_bytes[i*4 + 2] = (header[i] >> 16) & 0xFF;
    header_bytes[i*4 + 3] = (header[i] >> 24) & 0xFF;
  }

  for (int i = 0; i < 32; i++) hash1[i] = 0; // limpa hash1
  for (int i = 0; i < 32; i++) hash2[i] = 0; // limpa hash2

  ///////// SHA256 ROUND 1

  uchar in_data[64] = {0};
  uint datalen = 0;
  uint bitlen[2] = {0};
  uint state[8] = {0};

  sha256_init(state);
  sha256_update(in_data, &datalen, bitlen, (const uchar *)header, 80, state);
  sha256_final(in_data, &datalen, bitlen, state, hash1);

  ///////// SHA256 ROUND 2

  // Zera tudo com segurança
  for (int i = 0; i < 64; i++) in_data[i] = 0;
  datalen = 0;
  bitlen[0] = 0;
  bitlen[1] = 0;

  sha256_init(state);
  sha256_update(in_data, &datalen, bitlen, hash1, 32, state);
  sha256_final(in_data, &datalen, bitlen, state, hash2);

  for (int i = 0; i < 8; i++) { // passar de hash total para palavras
    hash_result[i] = ((uint32_t)hash2[i*4+3] << 24) |
                    ((uint32_t)hash2[i*4+2] << 16) |
                    ((uint32_t)hash2[i*4+1] << 8)  |
                    ((uint32_t)hash2[i*4+0]);
  }

}
