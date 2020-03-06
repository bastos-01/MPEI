% Pedro Bastos
% Ex6 - Função exponencial

N = 10000;
X = Exponencial(0.5,N);
[n, xout] = hist(X, 20);
bar(xout, n/N);