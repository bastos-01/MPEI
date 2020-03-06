function y = lcg(X0, a, c, m, N)

    y = zeros(1,N);
    y(1)= X0;
    
    for i = 1: N
        y(i+1) = rem(a * y(i) + c, m);
    end
end