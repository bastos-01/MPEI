% Pedro Bastos
% Ex7 - Box Muller

N = 1e6;
X = BoxMuller(N);

variancia = 2;
media = 14;

y = sqrt(variancia)*X + media;


figure(1);
hist(y,100);
