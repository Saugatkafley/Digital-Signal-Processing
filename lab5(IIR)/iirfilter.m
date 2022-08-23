%function [N, num1, den1]= b(fil_choice)
%fil_choice = input("ENter the type of filter : " ,"s");
pkg load signal;
pkg load control;
clc;
clear all;

fs=8000; pb=1200;
sb=2000;Rp=0.5;
Rs=40;
fn=fs/2;
wp=pb/fn;
ws=sb/fn;
fil_choice = 'butterworth';
switch (fil_choice)
case 'butterworth'
[N,wc]=buttord(wp,ws,Rp,Rs);
[num1,den1]= butter(N,wc);
case 'cheby'
[N,wc]=cheb1ord(wp,ws,Rp,Rs);
[num1,den1]=cheby1(N,Rp,wc);
case 'ellip'
[N,wc]=ellipord(wp,ws,Rp,Rs);
[num1,den1]=ellip(N,Rp, Rs, wc);
end
[Hd,wd]=freqz(num1,den1);
magd=abs(Hd);
phase=angle(Hd)*180/pi;
subplot(2,1,1);
plot(wd/pi,magd);title('Magnitude Plot')
subplot(2,1,2);
plot(wd/pi,phase);title('Phase Plot')