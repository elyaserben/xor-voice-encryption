%% I. Implementation of XOR encryption for voice encryption
% sampling frequency
fs = 8000; % common sampling freq. for voice
% generating key
key = randi(255,40000,1,'uint8');
% 40000 because 8000 * 5 second
% write key data to xlsx
xlswrite('XOR_key.xlsx',key);

%% II. Recording voice
rec = audiorecorder
msg1 = msgbox('recording for 5 second');
recordblocking(rec,5);
delete(msg1);
msg2 = msgbox('recording done');

%% III. Get data from recorded voice
y = getaudiodata(rec,'uint8');
yp = getaudiodata(rec);
figure(1);
plot(y); title('original voice');
% write original voice data to xlsx
xlswrite('XOR_original_voice.xlsx',y);

%% IV. playing the original voice
% if you want to play the original voice
% type this code below in command window
% >> sound(yp,fs)

%% V. Encrypting voice by performing XOR operation
z = bitxor(y,key);
figure(2);
plot(z); title('encrypted voice');
e = audioplayer(z,fs);
% write encryption data to xlsx
xlswrite('XOR_encrypted_voice.xlsx',z);

%% VI. playing the encrypted voice
% if you want to play the encrypted voice
% type this code below in command window
% >> play(e)