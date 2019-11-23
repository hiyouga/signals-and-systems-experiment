clc;
clear;
% build system
a = [1, 2, 1];
b = [0, 1, 2];
sys = tf(b, a);
% compute responses
t = 0:0.01:5;
y1 = impulse(sys, t);
y2 = step(sys, t);
% plot impulse response
subplot(2, 1, 1);
plot(t, y1);
grid on;
title('impulse response');
xlabel('t');
ylabel('y(t)');
% plot step response
subplot(2, 1, 2);
plot(t, y2);
grid on;
title('step response');
xlabel('t');
ylabel('y(t)');
