t = 0:0.01:2*pi; 
x = max(0, sin(t)); % Half-wave rectified sine wave 
N = [5, 10, 20]; 
y_limits = [-0.5 1]; 
for i = 1:3 
approx = 0; 
for n = 1:N(i) 
approx = approx + ((2/pi) * (1/(1 - (2*n)^2))) * cos(2*n*t); 
end 
approx = 0.5 + approx; 
subplot(3,1,i); 
plot(t, x, 'b', t, approx, 'r'); 
title(['Fourier Series Approximation with ', num2str(N(i)), ' Terms']); 
xlabel('Time (t)'); 
ylabel('Amplitude'); 
axis([0 2*pi y_limits]); 
end