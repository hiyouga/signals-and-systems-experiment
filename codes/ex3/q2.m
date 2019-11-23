clc;
clear;
% define variables
t = -pi:0.01:pi;
f = 2 * square(2*t, 50); % original signal
for n=1:4
    subplot(2, 2, n);
    fn = zeros(1, length(t)); % fundamental component
    kk = '1';
    for k=1:2:2*n-1
        fn = fn + 8/pi/k*sin(2*k*t); % n-th harmonic component
        if k>1
            kk = strcat(kk, ',', num2str(k));
        end
    end
    % plot signals
    plot(t, f);
    hold on;
    plot(t, fn);
    grid on;
    title(strcat('第', kk, '次谐波叠加'));
    xlabel('t');
    ylabel('x(t)');
    axis([-pi, pi, -2.75, 2.75]);
end
