t = (-100:100);
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
title("cosine discrete");
legend("sine-discrete", "cosine-discrete");
hold off;
