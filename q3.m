% Define time vector 
t = 0:0.01:10; 
% Define x(t) as a square wave and h(t) as the impulse response 
x = (t>=0 & t<5); 
h = exp(-2*t).*(t>=0); 
% Perform convolution 
y = conv(x, h, 'same') * 0.01; 
% Set axis limits 
x_limits = [0 10]; 
y_limits = [-0.5 1.5]; % Adjust based on amplitude of y(t) 
% Plot the signals 
subplot(3,1,1); plot(t, x); title('Square Wave x(t)'); 
xlabel('Time (t)'); ylabel('Amplitude'); 
axis([x_limits y_limits]); 
subplot(3,1,2); plot(t, h); title('Impulse Response h(t)'); 
xlabel('Time (t)'); ylabel('Amplitude'); 
axis([x_limits y_limits]); 
subplot(3,1,3); plot(t, y); title('Output y(t)'); 
xlabel('Time (t)'); ylabel('Amplitude'); 
axis([x_limits y_limits]);