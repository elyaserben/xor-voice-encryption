%% I. Get encrypted and key files
fs = 8000;
fprintf('upload the encrypted voice data\n');
en = uigetfile('*.xlsx'); % select the 'XOR_encrypted_voice.xlsx'
enc = xlsread(en);
encr = uint8(enc);

fprintf('upload the key\n');
k = uigetfile('*.xlsx'); % select the 'XOR_key.xlsx'
ke = xlsread(k);
key = uint8(ke);

%% II. Playing the encrypted voice
ep = audioplayer(encr,fs);
% if you want to play the encrypted voice
% type this code below in command window
% >> play(ep)

%% III. Decryption
dec = bitxor(encr,key);
plot(dec); title('decrypted voice');
d = audioplayer(dec, fs);
xlswrite('decrypted_voice.xlsx',dec);

%% IV. Playing the decrypted voice
% if you want to play the decrypted voice
% type this code below in command window
% >> play(d)