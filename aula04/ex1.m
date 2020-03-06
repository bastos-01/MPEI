% Pedro Bastos
% Ex1 - lcg

% a)

N = 1000;
X0 = 3;
a = 3;
c = 3;
m = 5;

y = lcg(X0, a, c, m, N);

figure(1);
histogram(y);

count = length(unique(y(1:N))); % unique dá os valores de y não repetidos e por ordem

fprintf("Obtivemos %d números diferentes.\n", count);

% b)

yb = lcg(X0, a, c, m, N) / m;

figure(2);
histogram(yb);

count2 = length(unique(yb(1:N)));
fprintf("Obtivemos %d números diferentes na alinea b).\n", count2);

% c) (valores da biblioteca NAG)

N = 1000; 
a = 13^13; 
c = 0;
m = 2^59;
X0 = 3;

yc = lcg(X0, a, c, m, N);

figure(3);
histogram(yc);

count3 = length(unique(yc(1:N)));
fprintf("Obtivemos %d números diferentes com os valores de NAG na alinea c).\n", count3);


