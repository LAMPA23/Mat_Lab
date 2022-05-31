Fd=20e3;% частота дискретизації
W1=0.256;%нижня частота полосового фільтра 3КГц
W2=0.537%верхня частота полосового фільтра 5КГц
f=0:10e3;%полоса частот до частоти Найквіста
n=20;%порядок фільтру
k=hann(n+1);%розрахунок вікна Ханна
b=fir1(n, [W1 W2], k);%розрахунок коефіцієнтів фільтра
hi=impz(b, 1);%рохрахунок імпульсної характеристики
h =freqz(b, 1, f, Fd);%розрахунок АЧХ фільтра
tau_phase=unwrap(angle(h));%розрахунок ФЧХ фільтра



x = 10*sin(2*pi*[0:1e3]/1e3) + sin(2*pi*[0:1e3]/10);
y = filter(b,1,x);
subplot(2,1,1); plot(x); grid;
subplot(2,1,2); plot(y); grid;