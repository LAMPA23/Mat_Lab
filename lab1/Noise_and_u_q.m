% Generates Uniformly and Normally Distributed random signals 
N=1024; % Define Number of samples
R1=randn(1,N); % Generate Normal Random Numbers
R2=rand(1,N); % Generate Uniformly Random Numbers
figure(1); % Select the figure
subplot(2,2,1); % Subdivide the figure into 4 quadrants
plot(R1); % Plot R1 in the first quadrant
grid;
title('Normal [Gaussian] Distributed Random Signal');
xlabel('Sample Number');
ylabel('Amplitude');
subplot(2,2,2); % Select the second qudrant
hist(R1); % Plot the histogram of R1
grid;
title('Histogram [Pdf] of a normal Random Signal');
xlabel('Sample Number');
ylabel('Total');
subplot(2,2,3);
plot(R2);
grid;
title('Uniformly Distributed Random Signal');
xlabel('Sample Number');
ylabel('Amplitude');
subplot(2,2,4);
hist(R2);
grid;
title('Histogram [Pdf] of a uniformly Random Signal');
xlabel('Sample Number');
ylabel('Total');

% Define average value and skv
u = sum(R1)/N;
q = sqrt(sum((R1-u).^2)/(N-1))
sprintf('u = %.5f', u)
legend(sprintf('q = %.5f', q))

u = sum(R2)/N;
q = sqrt(sum((R2-u).^2)/(N-1))
sprintf('u = %.5f', u)
legend(sprintf('q = %.5f', q))
