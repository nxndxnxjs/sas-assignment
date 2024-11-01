% Define time ranges
t_x = 0:0.01:2;   % Time range for x(t)
t_h = 0:0.01:1;   % Time range for h(t)

% (a) Define x(t) and h(t) as functions
x = @(t) sin(2 * pi * t) .* (t >= 0 & t <= 2);  % x(t) = sin(2πt) for 0 ≤ t ≤ 2
h = @(t) t .* (t >= 0 & t <= 1);                % h(t) = t for 0 ≤ t ≤ 1

% Evaluate x(t) and h(t) over their respective time ranges
xt = x(t_x);
ht = h(t_h);

% (b) Compute the convolution y(t) = x(t) * h(t)
y = conv(xt, ht, 'full') * 0.01;  % Scale by 0.01 due to time step

% Define time vector for y(t) based on the convolution result
t_y = linspace(t_x(1) + t_h(1), t_x(end) + t_h(end), length(y));

% (c) Plot the original signals x(t) and h(t), and the output y(t)
figure;

% Plot x(t)
subplot(3, 1, 1);
plot(t_x, xt, 'LineWidth', 1.5);
title('Input Signal x(t) = sin(2πt)');
xlabel('Time (t)');
ylabel('x(t)');
grid on;

% Plot h(t)
subplot(3, 1, 2);
plot(t_h, ht, 'LineWidth', 1.5);
title('Impulse Response h(t) = t');
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

