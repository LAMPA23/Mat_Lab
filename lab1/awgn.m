t=0:.01:2; %Time vector for 2s
x=sin(2*pi*t); %Generation sin wave
snr = 0.1; %SNR = 0.1 dB
y=awgn(x,snr,'measured'); % Add white noise
m=mean(y)
dev=std(y)
plot(t,x,t,y); %plot both signals
legend('Original signal','Signal with Noise');
