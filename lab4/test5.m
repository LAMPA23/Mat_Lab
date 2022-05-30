t = 0:1/1e3:2;
x = 2*sin(2*pi*t);
x_rand = rand(1, length(t));
y = x + x_rand;
subplot(3,1,1); plot(x); grid;
subplot(3,1,2); plot(x_rand); grid;
subplot(3,1,3); plot(y); grid;
