clc;
clear all ;

t = -10: 0.01:10;

h= t>=0;

x = h - t>=3;

y = conv(x,h , "same");
subplot(311);

plot(t,x , 'g');
title("x");

subplot(312);
plot(t,h , 'r');
title("h");

subplot(313);
plot(t,y);
title("convolution"); 