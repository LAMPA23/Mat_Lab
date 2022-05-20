fs=6;
t=0:(1/(fs*100)):1; 
A=1; 
OffSet=0;
x = A*sawtooth(t*2*pi*fs, 0.5) + OffSet; 

snr = -3;
y=awgn(x,snr,'measured'); % Add white noise
plot(t,x,t,y); %plot both signals
grid;
legend('Original signal','Signal with Noise');

mid_x_m=mean(x);
skv_x=(std(x));

mid_y_m=mean(y);
skv_y=(std(y));