x = [1.1, 2.3, -11.6];
h = [2,3,1.7, 2.9];

c = conv(x,h);
subplot(311);
stem(x);
subplot(312);
stem(h);
subplot(313);
stem(c);