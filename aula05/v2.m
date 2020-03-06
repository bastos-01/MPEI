% Pedro bastos

n = 1000;
f = 0.8;
N = n / f;
a = zeros(1, N);

letras = ['A':'Z' 'a':'z'];
fich = {'pg21209.txt', 'pg26017.txt'};
pmfLet = pmfLetrasPT(fich, letras);

for i = 1 : n
    s = randomKey2(pmfLet, letras);
    hash = stringParaHash(s, N) + 1;
    a(hash) = a(hash) + 1;
end


figure(1);
stem(a);
title("nº de strings");

figure(2);
x = 0: max(a);
[colisoes, index] = hist(a, x);
hist(a, x);

y = colisoes / N;
figure(3);
stem(y);
dist = cumsum(y);
A = [0: max(a)] * y';
variancia = (([0: max(a)] - A).^2) * y';

%conclusões
%A função de hash conseguiu o objectivo de espalhar as chaves/strings pelo array? Sim
%Temos de facto uma distribuição uniforme das chaves pelos índices do array? Sim
