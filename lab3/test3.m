% Generating 64 Samples of a unit impulse signal
 N=40; % Define the number of samples
 n=-(N/2):((N/2)-1); % Define a vector of sample numbers
 x=zeros(1,N); % Define a vector of zeros
 x((N/2)+1)=1.0; % Make the first sample to be 1 (i.e.at t=0)
 
x1=2.*x.*(n-10);
subplot(2,1,1);
plot(n,x1); % Plot the impulse
grid;
title('x1');

x2=5*x.*(n-10)+2.5*x.*(n-20);
subplot(2,1,2);
plot(n,x2); % Plot the impulse
grid;
title('x2');
