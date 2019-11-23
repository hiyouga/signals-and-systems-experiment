% linearity of fourier transformation
clc;
clear;
% define symbols
syms t;
x1 = exp(-t) * heaviside(t);
x2 = exp(-2 * abs(t));
x3 = 2 * x1 + 5 * x2;
f1 = fourier(x1);
f2 = fourier(x2);
f3 = fourier(x3);
f4 = 2 * f1 + 5 * f2;
% plot fourier transform results
subplot(2, 2, 1);
fplot(abs(f3), [-5, 5]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('符号方法直接计算幅度谱');
subplot(2, 2, 2);
fplot(angle(f3), [-5, 5]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('符号方法直接计算相位谱');
subplot(2, 2, 3);
fplot(abs(f4), [-5, 5]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('傅里叶变换性质计算幅度谱');
subplot(2, 2, 4);
fplot(angle(f4), [-5, 5]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('傅里叶变换性质计算相位谱');
