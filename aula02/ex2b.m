%casos possiveis são os 10 primeiros lançamentos sairem cara
%independentemente do 11º lançamento
N = 10000;
lancamentos = rand(11,N) > 0.5;

primeirosdez = lancamentos (1:10,:); %vai buscar as primeiras 10 linhas da tabela
dezcaras = sum(primeirosdez) == 10; %cria matriz de 1 linha com 1 nos casos q sai 10 caras
casosPossiveis = sum(dezcaras); %soma os 1 da matriz 'dezcaras'    

%igual aos casos possiveis mas quando sai 11 caras
onzecaras = sum(lancamentos) == 11;
casosFavoraveis = sum(onzecaras);

probOnzeCaras = casosFavoraveis/ casosPossiveis;