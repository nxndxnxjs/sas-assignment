% Define numerator and denominator coefficients
numerator = [10, 10];          % Coefficients of 10(s + 1)
denominator = [1, 6, 10];      % Coefficients of s^2 + 6s + 10

% Find zeros and poles manually
zeros = roots(numerator);
poles = roots(denominator);

% Plot the pole-zero map manually
figure;
plot(real(zeros), imag(zeros), 'go', 'MarkerSize', 10, 'LineWidth', 1.5); hold on;
plot(real(poles), imag(poles), 'rx', 'MarkerSize', 10, 'LineWidth', 1.5);
legend('Zeros', 'Poles');
title('Pole-Zero Map of the System');
xlabel('Real Part');
ylabel('Imaginary Part');
grid on;
hold off;
