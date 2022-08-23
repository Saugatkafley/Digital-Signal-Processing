x = [0 2 1 3];
y= fft(x , 4)

subplot(211);
stem(real(y));
subplot(212);
stem(imag(y));


