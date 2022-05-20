% Generates 40 samples of a unit step signal, u(n)
 N=40; % Define the number of samples
 n=-20:20; % Define a suitable discrete time axis
 u=[zeros(1,(N/2)+1),ones(1,(N/2))]; % Generate the signal
 
 
x=u.*(n)-u.*(n-1);
y=u.*(n-1)-u.*(n-5);


subplot(3,1,1); plot(n,u); axis([-20,+20,-0.5,1.5]); grid; title('u');
subplot(3,1,2); plot(n,x); axis([-20,+20,-0.5,1.5]); grid; title('x');
subplot(3,1,3); plot(n,y); axis([-20,+20,-0.5,5]); grid; title('y');