clc;
%x= [6 -2+2i -2 -2-2i];
x = [1.5 2.3 0 1 6.37];
y = fft(x,6)
z = ifft(y)

subplot(3,1,1)
stem(z);
title('Inverse FFT');

subplot(312);
stem(real(y))
title('Real part of FFT');

subplot(313)
stem(imag(y))
title('Imaginary Part of FFT');

