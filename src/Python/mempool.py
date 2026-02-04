import requests
import hashlib
import struct
import hashlib

global height
height = 100000

def sha256(data): # Realiza o SHA256
  return hashlib.sha256(data).digest()

def bits_to_target(bits):
  exponent = bits >> 24
  mantissa = bits & 0xffffff
  target = mantissa * (1 << (8 * (exponent - 3)))
  # Altere para little-endian para compatibilidade direta com C
  return target.to_bytes(32, byteorder='little')

def get_block_info(height):
  r = requests.get(f"https://mempool.space/api/block-height/{height}")
  block_hash = r.text.strip()
  r = requests.get(f"https://mempool.space/api/block/{block_hash}")
  b = r.json()

  return {
    "version": struct.pack("<L", b["version"]),
    "prev_hash": bytes.fromhex(b["previousblockhash"])[::-1],
    "merkle_root": bytes.fromhex(b["merkle_root"])[::-1],
    "timestamp": struct.pack("<L", b["timestamp"]),
    "bits": struct.pack("<L", b["bits"]),
    "nonce": struct.pack("<L", b["nonce"]),
    "bits_int": b["bits"],
    "nonce_int": b["nonce"],
    "block_hash": block_hash
  }

def mempool():
  global height
  b = get_block_info(height)

  version     = b["version"]
  prev_hash   = b["prev_hash"]
  merkle_root = b["merkle_root"]
  timestamp   = b["timestamp"]
  bits        = b["bits"]
  nonce       = b["nonce"]

  header = version + prev_hash + merkle_root + timestamp + bits + nonce

  print("Version: ", version.hex())
  print("Prev Block: ", prev_hash.hex())
  print("Merkle Root: ", merkle_root.hex())
  print("Timestamp: ", timestamp.hex())
  print("Bits: ", bits.hex())
  print("Nonce: ", nonce.hex())
  print("Header = version + prev_hash + merkle_root + timestamp + bits + nonce")

  print("----- BLOCK HEADER (80 bytes, LE, hex) -----")
  print(header.hex())

  # Double SHA256 para verificar o hash final, utilizando a lib  hashlib do Python
  first_hash_bytes = sha256(header)
  final_hash_bytes = sha256(first_hash_bytes)

  print("\n----- VERIFICAÇÃO DO HASH FINAL (DO PYTHON) -----")
  print(f"Bloco numero: {height}")
  print(f"Double Hash Final (LE, Hexa): \t\t{final_hash_bytes.hex()}") # do python
  print(f"Double Hash Final (BE, Hexa invertido): {final_hash_bytes[::-1].hex()}") # do python
  print(f"Hash do Bloco (mempool.space): \t\t{b['block_hash']}") # do mempool.space

if __name__ == "__main__":
  mempool()