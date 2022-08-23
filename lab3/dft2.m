clc;
clear all;
x= [0 1 2 3]
y = fft(x,4)
subplot(3,1,1)
stem(x);
title('stem(x)');
subplot(312);
stem(real(y))
title('Real part of FFT');
subplot(313)
stem(imag(y));
title('Imag part of FFT');
