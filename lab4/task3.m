t=0:pi/8:2*pi; % Period - 16 points
y=sin(t); %Ouer signal
N=length(y); %Namber of pulse
 
x_p = y;
x_n = y;

 x_p(1:2:N)=0;% непрані рівні нулю
 x_n(2:2:N)=0;% прані рівні нулю
 
subplot(3,1,1); stem(t,y); grid;
subplot(3,1,2); stem(t,x_p); grid;
subplot(3,1,3); stem(t,x_n); grid;
