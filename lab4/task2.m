t=0:pi/8:2*pi; % Period - 16 points
y=sin(t); %Ouer signal
N=length(y); %Namber of pulse
 for k=1:N-1 %Pulse decomposition
     x_p(k) = (y(k)+y(N-k))/2;
     x_n(k) = (y(k)-y(N-k))/2;   
 end
 subplot(3,1,1); stem(t,y); grid;
 subplot(3,1,2); stem(t(1:16),x_p); grid;
 subplot(3,1,3); stem(t(1:16),x_n); grid;
 