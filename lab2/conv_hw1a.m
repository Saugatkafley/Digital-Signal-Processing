x = [1.2 2.3 4.6 -5 -11.6];
h = [2 4 1.7 2.9];
y = conv(x,h);
subplot(3,1,1);
stem(x);
xlabel("x");

subplot(3,1,2);
stem(h);
xlabel("h");

subplot(3,1,3);
stem(y);
xlabel("Convolution");