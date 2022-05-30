x = sin(2*pi*(1:2000)/1000);
y = diric(x,2);
subplot(2,1,1); plot(x); grid;
subplot(2,1,2); plot(y); grid;