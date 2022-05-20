fs=140; %Sample frequency
t=0:1/fs:1; %Time interval 1s
A=2.2; % Amplitude
OffSet=2.233; %Offset
x=A*sin(2*pi*t*6) + OffSet; %Generating Sin signal
m=mean(x); %Calculating mean
SD_Teor=(2*A)/(2*sqrt(2)) % Theoretical stanard deviation
SD_Real = std(x) % Real stanard deviation
plot(t,x);
grid;
title('Sin Function');
xlabel('Time [S]');
ylabel('Amplitude');
legend(sprintf('mean = %.3f', m));
