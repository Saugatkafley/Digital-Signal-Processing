%windowing 
%plot the window using all 5 typyes of window and compare the result. 
N = input("Enter the value of N");
Wc =input("") ;
h = fir1(N , wc/N ,blackman(N+1));
freqz(h);