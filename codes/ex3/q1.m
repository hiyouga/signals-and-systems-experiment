clc;
clear;
% define variables
t = -4:0.01:4;
c0 = 0.5;
ns = [3, 7, 15, 30];
% compute and plot approximate result
for ii=1:4
    subplot(2, 2, ii);
    n = ns(ii);
    fn = c0 * ones(1, length(t)); % fundamental component
    for k=1:2:n
        fn = fn + sin(k*pi/2)/(k*pi/2)*cos(pi*k*t/2); % n-th harmonic component
    end
    % plot signals
    plot(t, fn);
    grid on;
    title(['N=', num2str(n)]);
    xlabel('t');
    ylabel('x(t)');
    axis([-4, 4, -0.2, 1.2]);
end
