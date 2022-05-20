% Generating train of pulse
t = 0 : 1 : 1000; %Time vector for sample frequency 50KHz
d = [0 : 200 : 1000 ; 1.2.^(0:5)]'; %Delay frequensy for pulse 1KHz. Amlitude attenuate by 0.8
x=sin(t)./t;
y = pulstran(t,d,x); %Genereting Gauspuls with frecuency 10KHz and bandwidth 
50%
plot(t,y)
grid;
title('PulseTrain Function');
xlabel('Time [mS]');
 ylabel('Amplitude');
