function Y = decimal_to_binary(x)
    buff = 0;
    n=0;
    y = [];
    while x>0
        while (buff*2)<=x
            buff=2^n;
            n=n+1;
        end
        x = x - 2^(n-1);
        y(end+1) = n;
        n = 0;
        buff = 0;
    end
    n = 1;
    while n<=max(size(y))
        Y(y(n)) = 1;
        n = n+1;
    end
end