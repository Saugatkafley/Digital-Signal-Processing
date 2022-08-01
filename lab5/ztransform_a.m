pkg load signal;

num = [1 0.23 0.65 1.37 1];
den = [1 0 -1 0.77 1.65];

[z, p, k] = tf2zp(num , den)
zplane(z , p)




