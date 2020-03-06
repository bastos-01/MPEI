% pedro Bastos

% 1)
disp(randomKey());

% 2)

disp(stringParaHash('test', 1000/0.8));

% 3)

tamanho = 1000/0.8;
array = zeros(1, tamanho);

randomKey();

n = 1000;
f = 0.8;
N = n / f;
a = zeros(1, N);

for k = 1: n
    string = randomKey();
    hash = stringParaHash(string, N);
    a(hash + 1) = a(hash + 1) + 1;
end


figure(1);
stem(a);
title("nº de strings");

X = [0: max(a)];
figure(2);
[colisoes, i] = hist(a, X);
hist(a, X);


% 4)

y = colisoes / N;
figure(3);
stem(y);

A = [0: max(a)] * y';
var = (([0: max(a)] - A).^2) * y';
distancia = cumsum(y);

