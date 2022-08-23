pkg load signal;
clc;
num = [1 0.23 0.65 1.37 1];
den = [1 0 -1 0.77 1.65];

%freqz(num , den)
[zeros , poles, k] = tf2zp(num , den)
zplane(zeros , poles)
