%Pedro Bastos

%a)

%Total de Notas = 100;
%Espaço de amostragem da experiencia "retirar uma nota da caixa":
%S = {nota 1, nota 2, ... , nota 100}
%cada nota tem a mesma probabilidade de ser retirada, logo:
%p("retirar nota 1") = p("retirar nota 2") = ... = p("retirar nota 100")
%casos favoraveis/casos possiveis = 1/100

%------------------------------------------------------

%b)

%espaço de Amostragem: S = {5,50,100}
%Função massa de probabilidade de X:

%pX(5) = 90/100
%pX(50) = 9/100
%pX(100) = 1/100

%------------------------------------------------------

%c)

x = [5,50,100];
pX = zeros(length(x));

pX(1) = 90/100;
pX(2) = 9/100;
pX(3) = 1/100;

stem(x, pX);
axis([0 101 0 1]);

xlabel("notas(x)");
ylabel("probabilidade(pX)");
title("Grafico de Função de massa de probabilidade de X");


