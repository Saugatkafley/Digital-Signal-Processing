pkg load signal;
z = [1 -0.4 6.2 0.77 ];
p = [0.78 1.5 0 1 8.2];

k = 1;

[num , den] = zp2tf(z,p);
zplane(num , den);



