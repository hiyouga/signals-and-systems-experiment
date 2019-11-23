% plot four signals in one figure
clc;
clear;
% signal #1
subplot(4, 1, 1);
t = -5:0.1:5;
f = 4 * sin(3 * t + pi / 2);
plot(t, f, '--r');
grid on;
h = title('$f(t)=4\sin(3t+\frac\pi2)$');
set(h, 'Interpreter', 'latex');
xlabel('t');
ylabel('f(t)');
% signal #2
subplot(4, 1, 2);
k = -15:15;
f = 4 * sin(pi / 6 * k);
stem(k, f, '-g');
grid on;
h = title('$f[k]=4\sin(\frac\pi6k)$');
set(h, 'Interpreter', 'latex');
xlabel('k');
ylabel('f[k]');
% signal #3
subplot(4, 1, 3);
t = 0:0.1:50;
f = exp(-0.05 * t) .* sin(pi / 4 * t);
plot(t, f, ':b');
grid on;
h = title('$f(t)=e^{-0.05t}\sin(\frac\pi4t)$');
set(h, 'Interpreter', 'latex');
xlabel('t');
ylabel('f(t)');
% signal #4
subplot(4, 1, 4);
k = 0:50;
f = exp(-0.05 * k) .* sin(pi / 4 * k);
stem(k, f, ':.k');
grid on;
h = title('$f[k]=e^{-0.05k}4\sin(\frac\pi4k)$');
set(h, 'Interpreter', 'latex');
xlabel('k');
ylabel('f[k]');
