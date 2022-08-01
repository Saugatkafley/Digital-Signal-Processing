x= [0 1 2 3];
y = fft(x,4);
subplot(3,1,1)
stem(x);
subplot(312);
stem(real(y))
subplot(313)
stem(imag(y))
