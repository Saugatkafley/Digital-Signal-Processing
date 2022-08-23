t = (0:0.001:10);
x = sin(t);
plot(t,x);
xlabel('t');
ylabel('x(t)');
title('sine wave');
hold on;

y =  cos(t);
plot(t,y);
xlabel("t");
ylabel("y(t)");
title("sinusoidal wave 075bct099");
legend("sine", "cosine");
hold off;

