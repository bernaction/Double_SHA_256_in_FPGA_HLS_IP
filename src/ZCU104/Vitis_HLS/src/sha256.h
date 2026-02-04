#ifndef SHA256_H
#define SHA256_H

#include <stdbool.h>
#include <stdio.h>
#include <stdint.h>

// Tipos
#define uchar unsigned char // 8-bit byte
#define uint uint32_t 

// Macro para tratar adicao de inteiros de 64 bits
#define DBL_INT_ADD(a,b,c) if (a > 0xffffffff - (c)) ++b; a += c;

// Macros para rotações
#define ROTLEFT(a,b) ((uint32_t)(((uint64_t)(a) << (b)) | ((uint64_t)(a) >> (32 - (b)))))
#define ROTRIGHT(a,b) ((uint32_t)(((uint64_t)(a) >> (b)) | ((uint64_t)(a) << (32 - (b)))))


static inline uint32_t rotr32(uint32_t value, uint32_t shift) {
 shift &= 31;
 return ((value >> shift) | ((value << (32 - shift)) & 0xFFFFFFFF));
}


// Macros para funcoes logicas do SHA-256
#define CH(x,y,z) (((x) & (y)) ^ (~(x) & (z)))
#define MAJ(x,y,z) (((x) & (y)) ^ ((x) & (z)) ^ ((y) & (z)))
#define EP0(x) (ROTRIGHT(x,2) ^ ROTRIGHT(x,13) ^ ROTRIGHT(x,22))
#define EP1(x) (ROTRIGHT(x,6) ^ ROTRIGHT(x,11) ^ ROTRIGHT(x,25))
#define SIG0(x) (ROTRIGHT(x,7) ^ ROTRIGHT(x,18) ^ ((x) >> 3))
#define SIG1(x) (ROTRIGHT(x,17) ^ ROTRIGHT(x,19) ^ ((x) >> 10))

// Constantes do SHA-256
static const uint k[64] = {
    0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5, 0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
    0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3, 0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
    0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc, 0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
    0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7, 0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
    0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13, 0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
    0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3, 0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
    0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5, 0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
    0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208, 0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
};

// Prototipos das funcoes
void sha256_transform(uint state[8], const uchar data[64]);
void sha256_init(uint state[8]);
void sha256_update(uchar in_data[64], uint *datalen, uint bitlen[2], const uchar header[80], uint len, uint state[8]);
void sha256_final(uchar in_data[64], uint *datalen, uint bitlen[2], uint state[8], uchar final_hash[32]);

void sha256_top(
  uint32_t *header,             // 80 bytes = 20 palavras
  uint32_t *hash_result,        // 32 bytes = 8 palavras
  volatile bool *ap_busy_out    // 'true' quando computando, 'false' quando ocioso
);

#endif // SHA256_H
