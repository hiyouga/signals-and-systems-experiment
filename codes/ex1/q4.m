% plot triangle signal, differential signal and integrated signal
clc;
clear;
% triangle signal f(t)
h = 0.001;
t = -5:h:5;
ft = @(t)tripuls(t, 4, 0.5);
% plot f(0.5t)
subplot(4, 1, 1);
f1 = ft(0.5*t);
plot(t, f1);
grid on;
title('f(0.5t)');
xlabel('t');
ylabel('f(0.5t)');
% plot f(3-2t)
subplot(4, 1, 2);
f2 = ft(3-2*t);
plot(t, f2);
grid on;
title('f(3-2t)');
xlabel('t');
ylabel('f(3-2t)');
% plot f'(t)
subplot(4, 1, 3);
f3 = diff(ft(t))*1/h;
plot(t(1:length(t)-1), f3);
grid on;
title("f'(t)");
xlabel('t');
ylabel("f'(t)");
% plot F(t)
subplot(4, 1, 4);
t = -5:0.1:5;
f4 = t;
for x=1:length(t)
    f4(x) = integral(ft, -5, t(x));
end
plot(t, f4);
grid on;
title('F(t)=\int_tf(t)');
xlabel('t');
ylabel('F(t)');
