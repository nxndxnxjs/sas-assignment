% Define frequencies
f1 = 1;    % Frequency of first sinusoid (1 Hz)
f2 = 10;   % Frequency of second sinusoid (10 Hz)

% Define time range
t = 0:0.01:10;  % Time vector for 0 <= t <= 10 seconds

% (a) Define and plot the input signal x(t)
x_t = sin(2 * pi * f1 * t) + sin(2 * pi * f2 * t);

% Plot x(t)
figure;
subplot(3, 1, 1);
plot(t, x_t, 'LineWidth', 1.5);
title('Input Signal x(t) = sin(2πf1t) + sin(2πf2t)');
xlabel('Time (t)');
ylabel('x(t)');
grid on;

% Define the impulse response h(t) = e^(-t) (for a low-pass filter)
h = @(t) exp(-t) .* (t >= 0);  % Impulse response for t >= 0
t_h = 0:0.01:10;  % Define time range for impulse response
h_t = h(t_h);

% (b) Perform the convolution of x(t) and h(t)
y = conv(x_t, h_t, 'same') * 0.01;  % Scaling by time step (0.01)

% Adjust time vector for y(t) after convolution
t_y = linspace(t(1), t(end), length(y));

% (c) Plot the output signal y(t)
subplot(3, 1, 2);
plot(t_y, y, 'LineWidth', 1.5);
title('Output Signal y(t) = x(t) * h(t)');
xlabel('Time (t)');
ylabel('y(t)');
grid on;

% Plot the impulse response h(t) for reference
subplot(3, 1, 3);
plot(t_h, h_t, 'LineWidth', 1.5);
title('Impulse Response h(t) = e^{-t}');
xlabel('Time (t)');
ylabel('h(t)');
grid on;


