clc;
clear all;
syms t;
f = str2sym('Heaviside(t+1)-Heaviside(t-1)');
ezplot(f, [-4,4]);
