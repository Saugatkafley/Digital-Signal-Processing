%a
pkg load signal;
pkg load control;
clc;

f = [0 pi/6 pi/6 pi];
H = [1 1 0 0];
M = 31;
w = 0:pi/30:pi;
subplot(2,2,1);
h = hamming(M);
plot(w/pi,h,'linewidth', 2);
grid on;
title('31-point symmetric Hamming window');
subplot(2,2,2);
[H1,w] = freqz(h,1,1024);
plot(w/pi,abs(H1),'linewidth', 2);
grid on;
title('Frequency Response for Hamming window function');
subplot(2,2,3);
B = fir1(M-1,1/6,h); %It uses Hamming window of length M+1 by default
%if not specified
[H2,w] = freqz(B,1,1024);
plot(w/pi,abs(H2),'linewidth', 2);
grid on;
ylabel('Amplitude');
xlabel('Radian Frequency');
title('Frequency Response of FIR filter using Hamming window');
gk = 20*log(abs(H2));
subplot(2,2,4);
plot(w/pi,gk,'linewidth', 2);
grid on;
title("075bct099")
ylabel('dB');
xlabel('Radian Frequency');
%end