clc;

n= (-10:10);
c = input("c = ");
a = input("a =  ");
y = c*exp(a*n);
stem(n,y);
title('Exponential signal 075bct099')
