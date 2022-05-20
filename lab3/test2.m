% Generating the signal x(t)=exp(-0.1t)
t=0:0.1:40;
x=exp(-0.1*t).*sin(0.6*t);
plot(t,x);
grid;
title('Exponential Signal');
xlabel('Time [mS]');
ylabel('Amplitude');