clc;
n = -10:10;
x= [];
h = [];
pow =[];

a = input("Input for constant value a bwt 0 and 1 :");
for(n = -10:10)
  
  if(n >=0)
    h = [h 1];
  else
    h = [h 0];
  end
  pow = [pow a.^n];
end

x= pow.*h;
y = conv(x,h);
subplot(311);
stem(x);
title("Power signal 075bct099");
subplot(312);
stem(h);
title("h ");
subplot(313);
stem(y);
title("convolution ");
    