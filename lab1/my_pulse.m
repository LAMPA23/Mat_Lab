fs=5;
t=0:(1/(fs*100)):1; 
A=1; 
OffSet=0;
x = A*square(t*2*pi*fs) + OffSet; 
m=mean(x); 
SD_Teor=(2*A)/(2*sqrt(2)) % Theoretical stanard deviation
SD_Real = std(x) % Real stanard deviation
plot(t,x);
grid;
title('Pulse Function');
xlabel('Time [S]');
ylabel('Amplitude');
legend(sprintf('mean = %.3f', m));