N = 128; % Define Number of samples
val = rand(1, N)*2*pi - pi; % Generate Normal Uniformily Numbers
subplot(2, 1, 1); 
plot(val); 
title('Uniformly Distributed Random Digits'); 
xlabel('Sample Number'); 
ylabel('Amplitude'); 
m_val = sum(val)/N; 
skv_val = std(val) 
legend(sprintf('mean value = %.4f\nSKV = %.4f', m_val, skv_val)); 
subplot(2, 1, 2); 
histogram(val); 
