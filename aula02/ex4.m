%Pedro Bastos
n = 20;
m = 100;
N = 1e04;
lancamentos = randi(m,n,N); %matriz com range ate 100 de 20 linhas e N colunas

sucessos = 0;
for i = 1: N
    if length(unique(lancamentos(:,i))) == n
        sucessos = sucessos + 1;
    end
end

prob = sucessos/N;

%b
sucessosb=0;
for i = 1: N
    if length(unique(lancamentos(:,i))) <= n-1
        sucessosb = sucessosb + 1;
    end
end

probB = sucessosb/N;
%NOTA: outra maneira de resolver esta alínea seria:
%se A é a probabilidade de cada alvo ser atingido apenas uma vez entao 1-A
%é a probabilidade do alvo ser atingido uma ou mais vezes:
%p(AUB)=P(A) + P(B) - P(/A U B) -> B é o contrário de A


%c

mValores = [1000, 10000, 100000, 10000000]; %valores de m
tic %tic e toc para calcular performance
for i = 1: 4 %para cada valor de mValores
    subplot(1,4,i); %cria subplot 
    M = mValores(i); 
    prob = [];
    %nº de dardos
    for n = 1:10:100 %para cada subplot, vai calcular a prob da alinea b) para cada n de 10 em 10
        prob = [prob equalnumber(n,N,M)]; 
    end
    plot([1:10:100], prob)
end
toc
    
