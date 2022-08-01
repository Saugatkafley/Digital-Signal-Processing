n= -10:1:10;
% Empty vector x and h
x = [];
h = [];
for(n = -10:10)
  if(n>= 0 & n<=5)
    x = [x 1];
  else
    x = [x 0];
  end
  if (-1<= n & n<=3)
    h = [h 0.1];
  else
    h = [h 0];
  endif
end

y = conv(x,h);
subplot(311);
stem(x);
subplot(312);
stem(h);
subplot(313);
stem(y);
