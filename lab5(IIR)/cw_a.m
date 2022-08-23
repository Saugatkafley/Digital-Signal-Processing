% IIR filters 
% Butterworth
wp  = 0.2* pi ;
ws  = 0.6 * pi ;
Ap = 0.8;
As = 0.2;

[N , wn] = buttord(wp/pi  ,ws / pi  , Ap ,As);
[b,a]= butter(N,wn);
freqz(b,a);

 