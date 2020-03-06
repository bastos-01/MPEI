% Pedro Bastos
% Ex2 

% a)

N = 10;
p = 0.5;

sucessos = Bernoulli(p,N);

figure(1);
histogram(sucessos);

% b)

Nb = 15;

yb = rand(1,N)*6;

lancamentos = round(yb);
figure(2);
histogram(lancamentos,[0:6]);

% c)

Nc = 20;
yc = -4 + rand(1,N) * 14;
figure(3);
histogram(yc, [-4:10]);


