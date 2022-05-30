t = 0:1/1e3:2;
x = 2*sin(2*pi*t);
y = awgn(x, 7);
subplot(2,1,1); plot(x); grid;
subplot(2,1,2); plot(y); grid;