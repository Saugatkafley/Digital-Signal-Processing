clc;
t = (-50:50);
x = sin(t);
stem(t,x);
xlabel('n');
ylabel('x[n]');
title('sine discrete');
hold on;

y =  cos(t);
stem(t,y);
xlabel("n");
ylabel("y[n]");
title("cosine discrete 075bct099");
legend("sine-discrete", "cosine-discrete");
hold off;
