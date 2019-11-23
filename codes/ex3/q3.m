clc;
clear;
% construct signal
N = 10;
n1 = -N:-1;
C1 = -4*1j/pi^2./n1.^2.*sin(n1*pi/2);
C0 = 0;
n2 = 1:N;
C2 = -4*1j/pi.^2./n2.^2.*sin(n2*pi/2);
Cn = [C1, C0, C2];
n = -N:N;
% plot amplitude spectrum
subplot(2, 1, 1);
stem(n, abs(Cn));
grid on;
xlabel('k');
ylabel('幅度谱');
% plot phase spectrum
subplot(2, 1, 2);
stem(n, angle(Cn));
grid on;
xlabel('k');
ylabel('相位谱');
