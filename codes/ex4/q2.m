clc;
clear;
% define symbols and variables
syms t;
dk = 0.01;
dw = 0.1;
% compute fourier transformation (symbolic method)
x1 = exp(-t) * heaviside(t);
x2 = exp(-2 * abs(t));
x3 = heaviside(t + 1/2) - heaviside(t - 1/2);
f1 = fourier(x1);
f2 = fourier(x2);
f3 = fourier(x3);
% compute fourier transformation (numerical method)
k1 = -5:dk:5;
w1 = -5:dw:5;
r1 = exp(-k1) .* (k1>=0);
c1 = r1 * exp(-1j * k1' * w1) * dk;

k2 = -10:dk:10;
w2 = -10:dw:10;
r2 = exp(-2*abs(k2));
c2 = r2 * exp(-1j * k2' * w2) * dk;

k3 = -10:dk:10;
w3 = -10:dw:10;
r3 = (k3>-1/2)-(k3>1/2);
c3 = r3 * exp(-1j * k3' * w3) * dk;
% plot fourier transform results
% signal #1
subplot(3, 4, 1);
fplot(abs(f1), [-5, 5]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('x_1符号法幅度谱');
axis([-5, 5, 0, 1]);
subplot(3, 4, 2);
fplot(angle(f1), [-5, 5]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('x_1符号法相位谱');
axis([-5, 5, -2, 2]);
subplot(3, 4, 3);
plot(w1, abs(c1)); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('x_1数值法幅度谱');
axis([-5, 5, 0, 1]);
subplot(3, 4, 4);
plot(w1, angle(c1)); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('x_1数值法相位谱');
axis([-5, 5, -2, 2]);
% signal #2
subplot(3, 4, 5);
fplot(abs(f2), [-10, 10]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
axis([-10, 10, 0, 1]);
title('x_2符号法幅度谱');
subplot(3, 4, 6);
fplot(angle(f2), [-10, 10]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('x_2符号法相位谱');
axis([-10, 10, -1, 1]);
subplot(3, 4, 7);
plot(w2, abs(c2)); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('x_2数值法幅度谱');
axis([-10, 10, 0, 1]);
subplot(3, 4, 8);
plot(w2, angle(c2)); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('x_2数值法相位谱');
axis([-10, 10, -1, 1]);
% signal #3
subplot(3, 4, 9);
fplot(abs(f3), [-10, 10]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('x_3符号法幅度谱');
axis([-10, 10, 0, 1]);
subplot(3, 4, 10);
fplot(angle(f3), [-10, 10]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('x_3符号法相位谱');
axis([-10, 10, -4, 4]);
subplot(3, 4, 11);
plot(w3, abs(c3)); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('x_3数值法幅度谱');
axis([-10, 10, 0, 1]);
subplot(3, 4, 12);
plot(w3, angle(c3)); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('x_3数值法相位谱');
axis([-10, 10, -4, 4]);
