function vetor = VetorDiscreto(xi, pX, N)
    Fx = cumsum(pX);
    vetor = zeros(1,N);
    
    for j = 1: N
        k = rand();
        i = 1 + sum(k>Fx);
        vetor(j) = xi(i);
    end
    
end
