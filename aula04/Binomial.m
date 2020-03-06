function sucessos = Binomial(n,p,N)
    x = rand(n,N) < p;
    sucessos = sum(x);
end