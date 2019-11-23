clc;
clear all;
t = 0:0.001:4;
T = 1;
ft = rectpuls(t-2*T, 2*T);
plot(t, ft);
grid on;
axis([0, 4, -0.5, 1.5]);
