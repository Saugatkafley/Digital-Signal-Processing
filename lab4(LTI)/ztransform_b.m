pkg load signal;
clc;
z = [0.5660 + 1.1062i 0.5660 - 1.1062i -0.6810 + 0.4288i -0.6810 - 0.4288i ];

p = [0.9488 + 0.7766i 0.9488 - 0.7766i -0.9488 + 0.4442i -0.9488 - 0.4442i ] ;

k = [1];

[num , den ]  = zp2tf(z,p,k) 
zplane(num , den);