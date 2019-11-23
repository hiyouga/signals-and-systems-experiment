% plot impulse signal and square signal
clc;
clear;
% impulse signal
subplot(2, 1, 1);
t0 = 0; tf = 5; dt = 0.001; t1 = 1;
t = [t0:dt:tf];
st = length(t);
n1 = floor((t1-t0)/dt);
x1 = zeros(1, st);
x1(n1) = 1 / dt;
stairs(t, x1, 'r');
grid on;
title('\delta(t)');
xlabel('t');
ylabel('\delta(t)');
% square signal
subplot(2, 1, 2);
t = -5:0.001:5;
f1 = square(pi * t, 50);
f2 = square(2 * pi * t, 80);
g1 = (t < 0);
g2 = (t >= 0);
f = f1 .* g1 + f2 .* g2;
plot(t, f);
grid on;
title('f(t)');
xlabel('t');
ylabel('f(t)');
