%devolve vetor com experiencia de bernoulli tendo em conta a probabilidade

function x = Bernoulli (p, N)
    x = rand(1,N) < p;
end
    