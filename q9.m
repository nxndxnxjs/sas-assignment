% Define time vector and original triangular wave 
t = 0:0.01:2*pi; 
x = sawtooth(t, 0.5); 
% Fourier series approximation for 5, 10, 20 terms 
N = [5, 10, 20]; 
y_limits = [-1 1]; 
for i = 1:3 
approx = 0; 
for n = 1:N(i) 
approx = approx + ((-1)^(n) / (2*n-1)^2) * cos((2*n-1)*t); 
end 
approx = approx * (8/pi^2); 
subplot(3,1,i); 
plot(t, x, 'b', t, approx, 'r'); 
title(['Fourier Series Approximation with ', num2str(N(i)), ' Terms']); 
xlabel('Time (t)'); 
ylabel('Amplitude'); 
axis([0 2*pi y_limits]); 
end 
