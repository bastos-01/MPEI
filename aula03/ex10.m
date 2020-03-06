% Pedro Bastos

% X é uma variável aleatória contínua de igual distribuição em (0,10)

% a)

%P(X<3) = p(0<=X<=3) = (3-0)/(10-0)

pTeorica = (3-0)/(10-0);

N = 1e5;
testes = rand(1, N)*10;
sucessos = testes < 3 & testes > 0;
pSimul = sum(sucessos)/N;

fprintf("A probabilidade teórica é de %f\n", pTeorica);
fprintf("A probabilidade da simulação é de %f\n", pSimul);
