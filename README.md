# Implementation of 256-bit AES Encryption and Decryption Algorithm
<p style="text-align: justify;">
Data encryption is essential in today's digital world to ensure privacy and security. 
This repository presents an implementation of the Advanced Encryption Standard-256 (AES-256) using Verilog,
offering a robust encryption scheme  ensuring data authenticity.
The AES algorithm plays an important role in securing sensitive information in various applications.</p>

## Overview of Cryptography
<p style="text-align: justify;">
In the realm of cryptographic techniques, AES stands as a symmetric-key encryption algorithm. It enables secure communication by allowing both the sender 
and the receiver to share a single secret key. This key is used to encrypt the plaintext at the sender's end and decrypt the ciphertext at the receiver's end.</p>

![AES_abstract_s](https://github.com/Pavanija/Implementation_of_256-bit_AES_Encryption_and_Decryption_Algorithm/assets/140067158/24b40287-c04f-4eb9-b6d7-ddb5763dd245)

## AES 256 Architecture Model
AES 256 aims to encrypt plaintext of 128 bits into ciphertext, with the help of 256 bits secret key.
The ciphertext is transferred to the receiver, and using the same secret key, the ciphertext is
decrypted to give back the same plaintext. AES is an iterative algorithm, carried out in **rounds**,
which involve Substitute Bytes(SubBytes), ShiftRows , MixColumns and AddRoundKey. AES 256 uses 14 rounds for 256-bit keys.

![colour_AES_overview_en_de](https://github.com/Pavanija/Implementation_of_256-bit_AES_Encryption_and_Decryption_Algorithm/assets/140067158/6e5aefd6-14f3-44e5-961e-9db454d08494)

### AES Encryption process  
Plaintext of 128 bits , along with the secret key of 256 bits is converted into the encrypted text (CIPHAR text) of 128 bits.The input data undergoes various modifications, yet, is 128-bit
data every time. This intermediate data is called state. The state of 128 bits (i.e, 16 bytes) is arranged as a 4x4 byte matrix, hence known as the state matrix.
 Modular operations involved in encryption are 
#### - Pre round transformation <br />
 This step is bitwise XOR of plaintext and key 0. Required keys (key2 to key14) are provided by the key expansion process
#### - Byte Substitution <br />
 The 16 input bytes are substituted by looking up a fixed table 
#### - ShiftRows <br />
 After BYTEs substitution, the 128-bit state matrix undergoes shift rows operation.
Each of the four rows of the matrix is shifted to the left in a circular fashion, respectively
#### - MixColumns <br />
Each column of four bytes is now transformed individually, using a special mathematical function.This function takes one column as input and outputs four completely new column bytes, which replace the original column. The result is another new matrix consisting of 16 new bytes
#### - Addroundkey <br />
The 16 bytes of the matrix are now considered as 128 bits and are XORed with the 128 bits of the round key (key n). Similar rounds are carried 14 times in total. (Excluding Mix Columns in the final round

### Key expansion
We require 15 128-bit keys for encryption/decryption, two of them are already two halves of the main cipher key, so 13 more keys are to be created. The Expanded key module generates a new key of 256 bits, from its previous 256-bit key. We now generate 7 new 256-bit keys from the cipher key one after the other by following below steps
-- Rotate the last column of the keyn
-- Substitute bytes of the rotated column in the forward S-box
-- Bitwise XOR of RCON, substituted byte and first column of keyn, becomes the first
column of keyn+1 (next round key)
-- XOR of the 2nd column of keyn and the above-obtained column becomes the 2nd column
of keyn+1. This step is repeated 2 more times till the 4th column of keyn+1 is obtained
-- All 4 BYTEs of the 4th column are now Substituted in the Forward S-box
-- The new column/word, on XORing with the 5th column of keyn gives the 5th column of
keyn+1. This step is repeated 3 more times. This block readily supplies the required keys to each round with cipher key and the round number as inputs.

### AES Decryption process 
Symmetric ciphers like AES assume that both the sender and receiver share the common secret
key. So, the same 256-bit secret key is present with the receiver also.
#### - Key expansion
In decryption, keys (128-bit) supplied to the rounds are the same as in encryption, but the order is  reversed. Key0 of decryption is key14 of encryption, similarly, ith key of decryption is the (14-i)th key of encryption.
#### - Inverse shiftrow <br />
The very first sub-process of the round. Each of
the four rows of the matrix is shifted to the right
in a circular fashion.
#### - Inverse SUB bytes <br />
The 16 input bytes are substituted by looking up the Inverse S-box. The output is also a matrix of four rows and four columns.
#### - Inverse add round key <br />
The 128-bit output from inverse SUB bytes is performed bitwise XOR with the 128-bit round key
(Obtained from the inverse key expansion block)
#### - Inverse MixColumns <br />
Output matrix of inverse add round key is performed inverse mix columns operation.
The difference between mix columns and inverse mix columns is only the matrix with which the
column is multiplied.This step is not performed in the last round

In summary , AES 256 Architecture Model implementation is done in verilog and design is evaluated using Vivado.
ASIC flow is performed using Open source  RTL to GDSII converter, Openlane in Skywater 130 nm PDK , STA is performed using openSTA and viewed layout using Klayout tool.
Attached are the verilog codes used for Encrytion and Decrytion processes
