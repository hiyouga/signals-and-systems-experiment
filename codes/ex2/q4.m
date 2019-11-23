clc;
clear;
% build system
a = [1, 2, 1];
b = [0, 2, 0];
sys = tf(b, a);
% compute zero-state response
dt = 0.01;
t = 0:dt:5;
t2 = 0:dt:10;
f = t + cos(0.2 .* t); % input signal
% method 1:
h = impulse(sys, t); % compute the impulse reponse
y1 = conv(f, h) * dt; % compute convolution
% method 2:
y2 = lsim(sys, f, t); % call library function
% plot method 1 result
subplot(2, 1, 1);
plot(t2, y1);
grid on;
axis([0, 5, 0, 2]);
title('convolution method');
xlabel('t');
ylabel('y(t)');
% plot method 2 result
subplot(2, 1, 2);
plot(t, y2);
grid on;
axis([0, 5, 0, 2]);
title('simulation method');
xlabel('t');
ylabel('y(t)');
