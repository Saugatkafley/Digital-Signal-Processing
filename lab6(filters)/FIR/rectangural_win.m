pkg load signal;
clc ;
clear all;

w = 0:pi/30:pi;
M = 31;

h = rectwin(M);

plot(w/pi,h,'linewidth' , 2);
grid on;
title('31-point Rectangle window');
subplot(2,2,1);
[H1,w] = freqz(h,1,1024);
plot(w/pi,abs(H1),'linewidth', 2);
grid on;
title('Frequency Response for Rectangle function 075bct099');
subplot(2,2,2);
B = fir1(M-1,1/6,h); %It uses Hamming window of length M+1 by default
[H2,w] = freqz(B,1,1024);
plot(w/pi,abs(H2),'linewidth', 2);
grid on;
ylabel('Amplitude');
xlabel('Radian Frequency');
title('Frequency Response of FIR filter using Rectanglewindow');
gk = 20*log(abs(H2));
subplot(2,2,3);
plot(w/pi,gk,'linewidth', 2);
grid on;
ylabel('dB');
xlabel('Radian Frequency');