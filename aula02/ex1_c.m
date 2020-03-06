experiencia = rand(2,1000) > 0.5;
pRapaz = sum(experiencia)  >= 1;
p2Rapazes = sum(experiencia) == 2;
probabilidadeC = sum(p2Rapazes) / sum(pRapaz);