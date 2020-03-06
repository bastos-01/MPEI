N = 1e5;
p = 0.5;
n = 15;
lancamentos = rand(n,N) > p;
soma = 0;

for k = 6:n
    sucessos = sum(lancamentos) == k;
    probSimulacao = sum (sucessos) / N;
    soma = soma + probSimulacao;
end


