% Define the time span and initial conditions
tspan = [0 10];                % Time from 0 to 10 seconds
initial_conditions = [0, 0];   % Initial conditions [y(0), y'(0)]

% Define the differential equation as a system of first-order equations
% dy1/dt = y2
% dy2/dt = 7*impulse_approximation - 3*y2 - 2*y1

% Approximate impulse as a large value over a small time interval
impulse_magnitude = 1000;
impulse_duration = 0.001;

% Define the system of equations
dydt = @(t, y) [y(2); (7 * (t <= impulse_duration) * impulse_magnitude) - 3*y(2) - 2*y(1)];

% Solve the system using ode45
[t, y] = ode45(dydt, tspan, initial_conditions);

% Plot the impulse response (output y(t))
figure;
plot(t, y(:, 1), 'b', 'LineWidth', 1.5);
title('Impulse Response of the System');
xlabel('Time (s)');
ylabel('Response');
grid on;
