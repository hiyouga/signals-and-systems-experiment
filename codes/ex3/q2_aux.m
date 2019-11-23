clc;
clear;
ts = [0.001, 0.005, 0.01, 0.05];
for ii=1:4
    subplot(2, 2, ii);
    t = -pi:ts(ii):pi;
    % construction method
    n = round(length(t)/4);
    f = 2 * [ones(n,1);-1*ones(n,1);ones(n,1);-1*ones(length(t)-3*n,1)]';
    % simulation method
    f1 = 2 * square(2*t, 50);
    % plot signals
    plot(t, f);
    hold on;
    plot(t, f1);
    title(['step=', num2str(ts(ii))]);
    xlabel('t');
    ylabel('x(t)');
    legend('ones', 'square');
end
