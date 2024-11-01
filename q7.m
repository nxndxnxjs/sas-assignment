% MATLAB code for Fourier Series Approximation of Square Wave
T = 2*pi;  % period
t = linspace(0, T, 1000);  % time vector for plotting

% Define the square wave
x_t = zeros(size(t));
x_t(t < pi) = 1;
x_t(t >= pi) = -1;

% Plot the original square wave
figure;
plot(t, x_t, 'k', 'LineWidth', 1.5);
hold on;
title('Square Wave and its Fourier Series Approximations');
xlabel('t');
ylabel('x(t)');
legend('Square Wave');

% Function to compute Fourier series approximation
N_values = [5, 10, 20];
colors = ['r', 'g', 'b'];
for j = 1:length(N_values)
    N = N_values(j);
    x_approx = zeros(size(t));
    
    for n = 1:N
        if mod(n, 2) == 1  % Only odd harmonics
            b_n = 4 / (n * pi);
            x_approx = x_approx + b_n * sin(n * t);
        end
    end
    
    % Plot the approximation
    plot(t, x_approx, colors(j), 'LineWidth', 1);
end

legend('Square Wave', 'N = 5', 'N = 10', 'N = 20');
hold off;
