clc;
clear;
% build system and compute frequency response
t = -4*pi:0.01:4*pi;
b = 1;
a = [1, 3, 2];
h = freqs(b, a, t);
% plot amplitude-frequency response
subplot(2, 2, 1);
plot(t/pi, abs(h));
grid on;
xlabel('\omega');
ylabel('|H(j\omega)|');
title('幅频响应');
% plot phase-frequency response
subplot(2, 2, 2);
plot(t/pi, angle(h));
grid on;
xlabel('\omega');
ylabel('<H(j\omega)');
title('相频响应');
% plot real part of frequency response
subplot(2, 2, 3);
plot(t/pi, real(h));
grid on;
xlabel('\omega');
ylabel('Re\{H(j\omega)\}');
title('频率响应实部');
% plot imaginary part of frequency response
subplot(2, 2, 4);
plot(t/pi, imag(h));
grid on;
xlabel('\omega');
ylabel('Im\{H(j\omega)\}');
title('频率响应虚部');
