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


S_R1 = sum(R1)/N;
S_R2 = sum(R2)/N;

SKV_R1 = std(R1);
SKV_R2 = std(R2);
fprintf('Normal:\nS_R1 = %f\nSKV_R1 = %f\nUniformly:\nS_R2 = %f\nSKV_R2 = %f\n\n', S_R1, SKV_R1, S_R2, SKV_R2);

