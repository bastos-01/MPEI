probCancro = 1/10000;
mpc = 0.9; %probabilidade da mamografia dar positivo se a pessoa tiver cancro
mpnc = 0.1; %probabilidade de mamografia dar positivo se a pessoa nao tiver cancro
casosFavoraveis = mpc * probCancro; %probabilidade de ter cancro e ter a mamografia positiva
casosPossiveis = (casosFavoraveis) + (mpnc * 1-probCancro); %juntar os casos favoraveis e os que nao tem cancro
probFinal = casosFavoraveis / casosPossiveis;
