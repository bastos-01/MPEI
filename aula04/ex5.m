% Pedro Bastos
% Ex5 - Distribuição discreta

xi = [1:6];
pX = [1, 1, 1, 1, 1, 5]/10;
N = 1000;

y = VetorDiscreto(xi, pX, N);
histogram(y, [1:6]);
