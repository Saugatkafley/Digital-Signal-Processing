n= 0:10;
x = power(0.5,n);
h = ones(1,10);
y = conv(x,h);
subplot(311);
stem(x);
title('Power signal');
subplot(312);
stem(h);
title('Ones');
subplot(313);
stem(y);
title('COnvolution of Power signal ');
