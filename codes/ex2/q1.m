clc;
clear;
% compute value
dt = 0.01;
t = -2:dt:2;
t2 = -4:dt:4;
x = t .^ 2;
h = (t >= 0) .* t;
y = conv(x, h) * dt;
% plot x(t)
subplot(3, 1, 1);
plot(t, x);
grid on;
title('x(t)=t^2');
xlabel('t');
ylabel('x(t)');
% plot h(t)
subplot(3, 1, 2);
plot(t, h);
grid on;
title('h(t)=tu(t)');
xlabel('t');
ylabel('h(t)');
% plot y(t)
subplot(3, 1, 3);
plot(t2, y);
grid on;
axis([-2, 2, 0, 5]);
title('y(t)=x(t)*h(t)');
xlabel('t');
ylabel('y(t)');
