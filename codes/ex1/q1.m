% plot f(t)=Sa(t-2)
clc;
clear;
% compute values
t = -5:0.1:5;
f = sinc(t-2);
% plot signal
plot(t, f, '--r');
grid on;
title('f(t)=Sa(t-2)');
xlabel('t');
ylabel('f(t)');
