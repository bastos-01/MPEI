%N = 1e5;
%p = 0.5;
%k = 6;
%n = 15;
%lancamentos = rand(n,N) > p;
%sucessos = sum(lancamentos) >= k;
%probSimulacao = sum (sucessos) / N;


for i = 0: 100
    teste = calculoProb(0.5, 15, 6, 1e5);
    stem(i, teste);
    hold on;
end



function prob = calculoProb(p, n, k, N)
    lancamentos = rand(n,N) > p;
    sucessos = sum(lancamentos) == k;
    prob = sum (sucessos) / N;
end
    
    