%Pedro Bastos
clear all;
clc;


% a) Probabilidade de não receber nenhuma mensagem 

%Por Poisson:
%pk = alfa^k/k! * e^-alfa ; onde alfa = media = n * p


m1 = 15 ; % media =  15 <=> E[X] = 15
k1 = 0 ; 

probZeroMensagens = (m1^k1 / factorial(k1)) * exp(-m1);
text1 = sprintf('P(Computador receber 0 mensagens) = %.10f',probZeroMensagens);
disp(text1);

% b) Prob de mais de 10 = 1 - (prob de 0 ate 10)

m2 = 15;
sumProb = 0;

for k2 = 0: 10
    sumProb = sumProb + (m2^k2 / factorial(k2)) * exp(-m2);
end

probMaisDeDez = 1 - sumProb;
text2 = sprintf('P(Computador receber 10 ou mais mensagens) = %.10f',probMaisDeDez);
disp(text2);
    
