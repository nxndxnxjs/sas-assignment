% Define time vector and input signal x(t) 
t = 0:0.01:5; 
x = sin(2*pi*t); 
% Define impulse responses h1(t) and h2(t) 
h1 = exp(-t).*(t>=0); 
h2 = exp(-2*t).*(t>=0); 
% Perform convolution for both cases 
y1 = conv(x, h1, 'same') * 0.01; 
y2 = conv(x, h2, 'same') * 0.01; 
% Set axis limits 
x_limits = [0 5]; 
y_limits = [-1.5 1.5];  % Adjust y-limits for all subplots 
% Plot results 
subplot(3,1,1); plot(t, x); title('Input Signal x(t)'); 
xlabel('Time (t)'); ylabel('Amplitude'); 
axis([x_limits y_limits]); 
subplot(3,1,2); plot(t, y1); title('Output y1(t) with h1(t)'); 
xlabel('Time (t)'); ylabel('Amplitude'); 
axis([x_limits y_limits]); 
subplot(3,1,3); plot(t, y2); title('Output y2(t) with h2(t)'); 
xlabel('Time (t)'); ylabel('Amplitude'); 
axis([x_limits y_limits]);