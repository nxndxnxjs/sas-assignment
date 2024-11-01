% Define time span and initial conditions for the response
tspan = [0 10];  % From 0 to 10 seconds
initial_conditions = [0, 0];  % Initial conditions [y(0), y'(0)]

% Define the differential equations for the system in terms of y1 and y2
% dy1/dt = y2
% dy2/dt = 5 - 4*y2 - 8*y1

dydt = @(t, y) [y(2); 5 - 4*y(2) - 8*y(1)];

% Solve the differential equation with ode45
[t, y] = ode45(dydt, tspan, initial_conditions);

% Plot the step response
figure;
plot(t, y(:, 1), 'b', 'LineWidth', 1.5);
title('Step Response of the System');
xlabel('Time (s)');
ylabel('Response');
grid on;

