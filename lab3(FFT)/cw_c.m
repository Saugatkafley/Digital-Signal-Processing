x = [1.2 3.7 0.6 1.3 2 0 0 0];
y = fft(x , 8);

subplot(211)
stem(y)
title("FFT of N=5 sequence 075bct099");
grid on;
subplot(212)
stem(x);
title("N=5 sequence")