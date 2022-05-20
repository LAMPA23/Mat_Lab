Fs=1e3;
t1=-40e-3:1/Fs:0;
t2=1e-3:1/Fs:40e-3;
T=40e-3;
A=5;
s=[-A*rectpuls(t1,T), A*rectpuls(t2,T)] ;
plot([t1,t2],s); grid;
ylim([-6 6]); 
