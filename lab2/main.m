X0 = 0;
X1 = 10;
sampling_time = 0.5;
bit_capacity = 4;
fun_handle = @sin;
y = SamplingAndQuantization(fun_handle, X0, X1, sampling_time, bit_capacity);