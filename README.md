# Implementation of 256-bit AES Encryption and Decryption Algorithm
<p style="text-align: justify;">
Data encryption is essential in today's digital world to ensure privacy and security. 
This repository presents an implementation of the Advanced Encryption Standard-256 (AES-256) using Verilog,
offering a robust encryption scheme  ensuring data authenticity.
The AES algorithm plays an important role in securing sensitive information in various applications.</p>

### Overview of Cryptography
<p style="text-align: justify;">
In the realm of cryptographic techniques, AES stands as a symmetric-key encryption algorithm. It enables secure communication by allowing both the sender 
and the receiver to share a single secret key. This key is used to encrypt the plaintext at the sender's end and decrypt the ciphertext at the receiver's end.</p>

![AES_abstract_s](https://github.com/Pavanija/Implementation_of_256-bit_AES_Encryption_and_Decryption_Algorithm/assets/140067158/24b40287-c04f-4eb9-b6d7-ddb5763dd245)

### AES 256 Architecture Model
AES 256 aims to encrypt plaintext of 128 bits into ciphertext, with the help of 256 bits secret key.
The ciphertext is transferred to the receiver, and using the same secret key, the ciphertext is
decrypted to give back the same plaintext. AES is an iterative algorithm, carried out in **rounds**,
which involve Substitute Bytes(SubBytes), ShiftRows , MixColumns and AddRoundKey. AES 256 uses 14 rounds for 256-bit keys

