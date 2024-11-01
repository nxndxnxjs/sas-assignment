% Define time span and initial conditions for step response
tspan = [0 10];
initial_conditions = [0, 0];  % Initial conditions [y(0), y'(0)]

% Define the differential equations for the step response
dydt = @(t, y) [y(2); -4*y(2) - 4*y(1) + 1];  % Adding 1 for the unit step

% Solve the differential equation using ode45
[t, y] = ode45(dydt, tspan, initial_conditions);

% Define poles and zeros for the pole-zero map
zeros = -1;  % Zero at s = -1
poles = [-2, -2];  % Double pole at s = -2

% Plot both pole-zero map and step response in one figure with subplots
figure;

% First subplot: Pole-zero map
subplot(2, 1, 1);
plot(real(zeros), imag(zeros), 'go', 'MarkerSize', 10, 'LineWidth', 1.5); hold on;
plot(real(poles), imag(poles), 'rx', 'MarkerSize', 10, 'LineWidth', 1.5);
legend('Zeros', 'Poles');
title('Pole-Zero Map of the System');
xlabel('Real Part');
ylabel('Imaginary Part');
grid on;
hold off;

% Second subplot: Step response
subplot(2, 1, 2);
plot(t, y(:, 1), 'b', 'LineWidth', 1.5);
title('Step Response of the System');
xlabel('Time (s)');
ylabel('Response');
grid on;
