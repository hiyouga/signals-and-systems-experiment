clc;
clear all;
t = -5:0.1:5;
f = sinc(t);
plot(t, f);
grid;
xlabel('t');
ylabel('Sa(t)');
