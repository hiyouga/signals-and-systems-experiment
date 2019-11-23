clc;
clear all;
k = 0:10;
A = 1;
a = -0.6;
fk = A * a .^ k;
stem(k, fk);
grid on;
axis([0, 10, -1, 1]);
