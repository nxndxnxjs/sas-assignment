% Define time ranges
t = -1:0.01:5;        % Time range for x(t) and h(t)
t_conv = -1:0.01:8;    % Extended time range for convolution

% Define the input signal x(t) and impulse response h(t)
x = @(t) (t >= 0 & t < 3) * 1;
h = @(t) (t >= 0) .* exp(-t);

% Evaluate x(t) and h(t)
xt = arrayfun(x, t);
ht = arrayfun(h, t);

% Perform the convolution of x(t) and h(t)
y = conv(xt, ht, 'same') * 0.01;  % Scaling by 0.01 due to the time step

% Adjust time vector for y(t) after convolution
t_y = linspace(t(1), t(end) + t(end), length(y));

% Plot the input signal x(t), impulse response h(t), and output y(t)
figure;

% Plot x(t)
subplot(3, 1, 1);
plot(t, xt, 'LineWidth', 1.5);
title('Input Signal x(t)');
xlabel('Time (t)');
ylabel('x(t)');
grid on;

% Plot h(t)
subplot(3, 1, 2);
plot(t, ht, 'LineWidth', 1.5);
title('Impulse Response h(t)');
xlabel('Time (t)');
ylabel('h(t)');
grid on;

% Plot y(t) = x(t) * h(t)
subplot(3, 1, 3);
plot(t_y, y, 'LineWidth', 1.5);
title('Output Signal y(t) = x(t) * h(t)');
xlabel('Time (t)');
ylabel('y(t)');
grid on;

% Analysis of the system’s behavior
disp('Analysis:');
disp('The output signal y(t) combines the rectangular pulse of x(t) with the exponential decay of h(t).');
disp('It initially increases as h(t) accumulates the effect of x(t) and then gradually decays once x(t) becomes zero.');
