t = 0:1/1e4:10;
y = chirp(t,0,10,10);
%spectrogram(y, t, 10);
plot(y);