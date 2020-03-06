function y = pmf(x ,pX, N)
    
    y = zeros(1, N);
    
    for k = 1: N
        r = rand();
        i = 1 + sum( r > cumsum(pX));
        y(k) = x(i);
    end  
end