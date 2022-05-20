% Generating the signal x(t)=sin(pi*x)/(pi*x)
t=linspace(-0,20); %Generating time array
x=sinc(t); %Our function
plot(t,x);
grid;
title('Sinc Function');
xlabel('Time [mS]');
ylabel('Amplitude');
