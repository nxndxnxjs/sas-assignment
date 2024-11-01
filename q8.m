% MATLAB code for Fourier Series Approximation of Sawtooth Wave
T = 2*pi;  % period
t = linspace(-pi, pi, 1000);  % time vector for plotting

% Define the original sawtooth wave
x_t = t / pi;

% Plot the original sawtooth wave
figure;
plot(t, x_t, 'k', 'LineWidth', 1.5);
hold on;
title('Sawtooth Wave and its Fourier Series Approximations');
xlabel('t');
ylabel('x(t)');
legend('Sawtooth Wave');

% Function to compute Fourier series approximation
N_values = [5, 10, 20];
colors = ['r', 'g', 'b'];
for j = 1:length(N_values)
    N = N_values(j);
    x_approx = zeros(size(t));
    
    for n = 1:N
        b_n = 2 * (-1)^(n+1) / n;
        x_approx = x_approx + b_n * sin(n * t);
    end
    
    % Plot the approximation
    plot(t, x_approx, colors(j), 'LineWidth', 1);
end

legend('Sawtooth Wave', 'N = 5', 'N = 10', 'N = 20');
hold off;
