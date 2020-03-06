% Pedro Bastos
N=10000;
n=10; %10 lançamentos
lancamentos = rand(n,N) > 0.5; %matriz com n linhas e N colunas com 0 e 1
sucessos = sum(lancamentos)==10; %percorre cada coluna e acescenta aos sucessos quando a coluna tem 10 caras
probabilidade = sum(sucessos)/N; %soma as vezes q da 10 caras e divide pelo num d experiencias
