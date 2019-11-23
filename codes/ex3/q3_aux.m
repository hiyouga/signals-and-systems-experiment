clc;
clear;
t = -2:0.01:2;
n = 100;
fn = zeros(1, length(t));
for k=1:n
    fn = fn + 8/k^2/pi^2*sin(k*pi/2)*sin(k*pi*t);
end
plot(t, fn);
grid on;
title(['N=', num2str(n)]);
xlabel('t');
ylabel('f(t)');
