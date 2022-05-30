t=0:pi/8:2*pi; % Period - 16 points
y=sin(t); %Ouer signal
N=length(y); %Namber of pulse
 for IC=1:N %Pulse decomposition
 decY{IC}=y;
 decY{IC}(1:IC-1)=0;
 decY{IC}(IC+1:N)=0;
 end
stem(t,y);
grid;
figure
for k=1:N-1
 subplot(4,4,k); stem(decY{k})
end
