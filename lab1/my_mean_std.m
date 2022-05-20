function y = my_mean_std (x)
mean_x = mean(x);
std_x = std(x);
l_N = length(x);

[m,n] = size(x);
N = m*n;

my_mean_x = sum(x)/N;
my_std_x = sqrt(sum((x-my_mean_x).^2)/(N-1))
TE = my_std_x/N;
y = [mean_x, my_mean_x, std_x, my_std_x, l_N, N, TE]

