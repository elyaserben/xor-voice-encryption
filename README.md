# xor-voice-encryption
**Implementing XOR cipher for voice encryption**

There is 2 main program, one for sender, and one for receiver.

The sender part, it will randomly generate key and you will record your voice for 5 seconds. After that, the voice will be encrypted and the encrypted voice data and key data will be saved into xlsx format. what's the purpose of writing the data to xlsx? You can check the process by performing some calculation.

example: we check the value of the first row

original voice: 125

key: 232

encryption: 126 XOR 232 

01111110 XOR 11101000
      
= 10010110 (decimal: 96)
      
decryption: 96 XOR 232

10010110 XOR 11101000
      
= 01111110 (decimal: 126)
      

In the receiver part, upload the encrypted voice data and key data, and then it will decrypt it so you can hear the original voice. The decrypted voice data then will be saved into xlsx format too, so you can ensure that the decrypted data and your calculation is same.
