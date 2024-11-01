% Define time range
t = linspace(-2, 10, 1000);

% Define the trapezoidal signal function x(t)
x = @(t) (0 <= t & t < 2) .* t + ...
         (2 <= t & t <= 6) .* 2 + ...
         (6 < t & t <= 8) .* (8 - t);

% Original signal x(t)
xt = x(t);

% Transformed signals
xt_minus_3 = x(t - 3);
xt_2t = x(2 * t);
xt_half_t = x(t / 2);
xt_2t_plus_3 = x(2 * t + 3);

% Plotting
figure;

% Original signal x(t)
subplot(5, 1, 1);
plot(t, xt);
title('x(t)');
grid on;

% Transformed signal x(t - 3)
subplot(5, 1, 2);
plot(t, xt_minus_3);
title('x(t - 3)');
grid on;

% Transformed signal x(2t)
subplot(5, 1, 3);
plot(t, xt_2t);
title('x(2t)');
grid on;

% Transformed signal x(1/2 * t)
subplot(5, 1, 4);
plot(t, xt_half_t);
title('x(1/2 * t)');
grid on;

% Transformed signal x(2t + 3)
subplot(5, 1, 5);
plot(t, xt_2t_plus_3);
title('x(2t + 3)');
grid on;

% Adjust layout
sgtitle('Trapezoidal Signal and its Transformations');
