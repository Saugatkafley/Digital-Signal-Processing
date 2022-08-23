clc;
clear ;

x = [1.2 2.3 4.6 -5 -11.6];
h = [2 4 1.7 2.9];


% convolution
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
for i=1:n+m-1
    y(i)=0;
    for j=1:m
        if(i-j+1>0)
            y(i)=y(i)+X(j)*H(i-j+1);
        else
        end
    end
end
subplot(3,1,1);
stem(x);
xlabel("x");

subplot(3,1,2);
stem(h);
xlabel("h");

subplot(3,1,3);
stem(y);
xlabel("Convolution");