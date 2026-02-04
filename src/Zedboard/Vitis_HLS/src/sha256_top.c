#include "sha256.h"


void sha256_top(
  uint32_t header[20],          // 80 bytes = 20 palavras
  uint32_t hash_result[8],      // 32 bytes = 8 palavras
  volatile bool *ap_busy_out    // 'true' quando computando, 'false' quando ocioso
){
  #pragma HLS INTERFACE s_axilite port=header       bundle=control offset=0x100
  #pragma HLS INTERFACE s_axilite port=hash_result  bundle=control offset=0x200
  #pragma HLS INTERFACE s_axilite port=return       bundle=control

  #pragma HLS INTERFACE ap_none    port=ap_busy_out

  unsigned char hash1[32];
  unsigned char hash2[32];
  unsigned char header_bytes[80];

  #pragma HLS ARRAY_PARTITION variable=hash1        complete dim=1
  #pragma HLS ARRAY_PARTITION variable=hash2        complete dim=1
  #pragma HLS ARRAY_PARTITION variable=header_bytes complete dim=1
  
  #pragma HLS DEPENDENCE      variable=header       inter false
  #pragma HLS DEPENDENCE      variable=hash_result  inter false

    *ap_busy_out = true;                            // Ativa o sinal de ocupado assim que a função começa a ser executada no hardware.

  // Converte header (uint32_t[20]) para bytes
  for (int i = 0; i < 20; i++) {
    #pragma HLS UNROLL
    header_bytes[i*4 + 0] = (header[i] >>  0) & 0xFF;
    header_bytes[i*4 + 1] = (header[i] >>  8) & 0xFF;
    header_bytes[i*4 + 2] = (header[i] >> 16) & 0xFF;
    header_bytes[i*4 + 3] = (header[i] >> 24) & 0xFF;
  }

  // Zera temporários
  for (int i = 0; i < 32; i++) hash1[i] = 0;
  for (int i = 0; i < 32; i++) hash2[i] = 0;
  
  uchar in_data[64] = {0};
  uint datalen = 0;
  uint bitlen[2] = {0};
  uint state[8] = {0};

  // SHA256 ROUND 1

  sha256_init(state);
  sha256_update(in_data, &datalen, bitlen, header_bytes, 80, state);
  sha256_final(in_data, &datalen, bitlen, state, hash1);

  for (int i = 0; i < 64; i++) in_data[i] = 0;
  datalen = 0;
  bitlen[0] = 0;
  bitlen[1] = 0;

  // SHA256 ROUND 2
  sha256_init(state);
  sha256_update(in_data, &datalen, bitlen, hash1, 32, state);
  sha256_final(in_data, &datalen, bitlen, state, hash2);


  // Converte hash2 (bytes) para hash_result (uint32_t[8])
  for (int i = 0; i < 8; i++) {
    #pragma HLS UNROLL
    hash_result[i] = ((uint32_t)hash2[i*4 + 3] << 24) |
                     ((uint32_t)hash2[i*4 + 2] << 16) |
                     ((uint32_t)hash2[i*4 + 1] << 8)  |
                     ((uint32_t)hash2[i*4 + 0]);              
  }

  *ap_busy_out = false;                               // Desativa o sinal de ocupado quando a computação principal termina.


}