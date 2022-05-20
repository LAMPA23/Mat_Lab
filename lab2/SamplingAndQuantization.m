function y = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity)

%Дискретизація 
X = X0:sampling_time:X1;
y0 = fun_handle(X);

%Квантування
y = uencode(y0, bit_capacity);

subplot(3,1,1); fplot(fun_handle,[X0,X1]); grid;
subplot(3,1,2); stem(y0); grid;
subplot(3,1,3); stem(y); grid;
end