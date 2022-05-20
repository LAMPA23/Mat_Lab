function y = average (x)
[m,n] = size(x);
if (~((m == 1) | (n == 1))) 
    error('error');
end 
y =sum(x)/length(x);