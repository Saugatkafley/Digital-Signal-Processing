w = 0:pi/30:pi;
figure(2);
h = hanning(M);
subplot(2,2,1);
plot(w/pi,h,'linewidth', 2);
title('31-point symmetric Hanning window');
grid on;

subplot(2,2,2);
[H1,w] = freqz(h,1,1024);
plot(w/pi,abs(H1),'linewidth', 2);
title('Frequency Response for Hanning window function');
grid on;

subplot(2,2,3);
B = fir1(M-1,1/6,h); %It uses Hamming window of length M+1 by default
[H2,w] = freqz(B,1,1024);
plot(w/pi,abs(H2),'linewidth', 2);
grid on;
ylabel('Amplitude');
xlabel('Radian Frequency');
title('Frequency Response of FIR filter using Hanning window');
gk = 20*log(abs(H2));

subplot(2,2,4);
plot(w/pi,gk,'linewidth', 2);
grid on;
ylabel('dB');
xlabel('Radian Frequency');