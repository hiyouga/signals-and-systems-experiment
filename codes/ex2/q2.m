clc;
clear;
% define symbols
syms t p;
x = heaviside(t) - heaviside(t-1);
h = 2 ^ (-t);
c = (heaviside(p) - heaviside(p-1)) * (2^(-(t-p)));
y = int(c, p, t-5, t+1);
% plot signals
fplot(x, [-1, 5]);
hold on;
fplot(h, [-1, 5]);
hold on;
fplot(y, [-1, 5]);
grid on;
legend('x(t)=u(t)-u(t-1)', 'h(t)=2^{-t}', 'y(t)=x(t)*h(t)');
xlabel('t');
title('x(t), h(t), y(t) (t\in [-1,5])');
