% time scaling property of fourier transformation
clc;
clear;
% define symbols
syms t;
x1 = exp(-t) * heaviside(t);
x2 = exp(-2*t) * heaviside(2*t);
f1 = fourier(x1);
f2 = fourier(x2);
f3 = f1/2;
% plot fourier transform results
subplot(2, 2, 1);
fplot(abs(f2), [-5, 5]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('符号方法直接计算幅度谱');
subplot(2, 2, 2);
fplot(angle(f2), [-5, 5]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('符号方法直接计算相位谱');
subplot(2, 2, 3);
fplot(@(t)t*2, abs(f3), [-2.5, 2.5]); grid on;
xlabel('\omega'); ylabel('|H(j\omega)|');
title('傅里叶变换性质计算幅度谱');
subplot(2, 2, 4);
fplot(@(t)t*2, angle(f3), [-2.5, 2.5]); grid on;
xlabel('\omega'); ylabel('<H(j\omega)');
title('傅里叶变换性质计算相位谱');
