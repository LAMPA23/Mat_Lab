Fd=20e3;% частота дискретизації
W1=0.264;%нижня частота полосового фільтра 3КГц
W2=0.536%верхня частота полосового фільтра 5КГц
f=0:10e3;%полоса частот до частоти Найквіста
n=20;%порядок фільтру
k=hann(n+1);%розрахунок вікна Ханна
b=fir1(n, [W1 W2], k);%розрахунок коефіцієнтів фільтра
hi=impz(b, 1);%рохрахунок імпульсної характеристики
subplot(2, 1, 1); stem(hi); grid on%виведення іпм. хар-ки
subplot(2, 1, 2); plot(k); grid on%виведення вікна
h =freqz(b, 1, f, Fd);%розрахунок АЧХ фільтра
figure
plot(f, abs(h))%виведення АЧХ
grid on
xlabel('Frequency, Hz')
legend ('Frequency responce')
tau_phase=unwrap(angle(h));%розрахунок ФЧХ фільтра
figure
plot(f, tau_phase)%виведення ФЧХ
grid on
ylabel('Phase, rad')
xlabel('Frequency, Hz')
legend ('Phase responce')