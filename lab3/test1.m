% Generating 64 samples of x(t)=sin(2*pi*f*t) with a
% Frequency of 1KHz, and sampling frequency of 8KHz.
N=64; % Define Number of samples
n=0:N-1; % Define vector n=0,1,2,3,...62,63
f=25; % Define the frequency
fs=400; % Define the sampling frequency
x=1.5*cos(2*pi*(f/fs)*n+pi/4); % Generate x(t)
plot(n,x); % Plot x(t) vs. t
grid;
title('Sinewave [f=1KHz, fs=8KHz]');
xlabel('Sample Number');
ylabel('Amplitude');
