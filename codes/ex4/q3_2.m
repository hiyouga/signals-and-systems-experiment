% convolution property of fourier transformation
clc;
clear;
% define symbols
syms t p;
x1 = exp(-t) * heaviside(t);
x2 = exp(-2 * abs(t));
c = exp(-p) * heaviside(p) * exp(-2 * abs(t-p));
x3 = int(c, p, t-5, t+5);
f1 = fourier(x1);
f2 = fourier(x2);
f3 = f1 * f2;
x4 = ifourier(f3);
% plot fourier transform results
subplot(2, 2, 1);
fplot(abs(x3), [-5, 5]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('时域卷积计算幅度谱');
axis([-5, 5, 0, 0.5]);
subplot(2, 2, 2);
fplot(angle(x3), [-5, 5]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('时域卷积计算相位谱');
axis([-5, 5, -1, 1]);
subplot(2, 2, 3);
fplot(abs(x4), [-5, 5]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('傅里叶卷积计算幅度谱');
axis([-5, 5, 0, 0.5]);
subplot(2, 2, 4);
fplot(angle(x4), [-5, 5]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('傅里叶卷积计算相位谱');
axis([-5, 5, -1, 1]);
