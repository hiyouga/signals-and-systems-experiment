clc;
clear all;
t = -1:0.01:3;
f = Heaviside(t);
plot(t, f);
axis([-1, 3, -0.2, 1.2]);
set(gcf, 'color', 'w');
grid;
title('Unit Step Function');
