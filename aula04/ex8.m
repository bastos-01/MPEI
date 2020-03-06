% Pedro Bastos
% Ex8 - Método de rejeição

N = 10000;
a = -5;
b = 5;

figure(1);
[X1,Y1] = ValoresRejeicao(a,b,N);
plot(X1, Y1, '.');