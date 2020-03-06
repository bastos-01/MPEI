function vetorFinal = jogoTotoloto(numBolas)
    
    pX = ones(1,49) * (1/49); % 1/49 é a probabilidade de sair cada bola 
    vetorFinal = zeros(1, numBolas);
    
    contador=1;
    
    while contador <= numBolas
        
       valorRandom = rand();
       numeroBola = 1 + sum(valorRandom > cumsum(pX)); % converte o valorRandom para o correspondente número de 1 a 49
       
       controlador = 0;
       for k=1: length(vetorFinal) %percorre o array de bolas que já sairam 
           if(vetorFinal(k) == numeroBola) %verifica se ja contem a bola escolhida aleatoriamente
               controlador = 1; 
           end
       end
       
       if(controlador == 0) %se o controlador for 0 significa que a bola ainda não saiu e, por isso, pode ser escolhida
           vetorFinal(contador) = numeroBola; 
           contador = contador + 1;
       end
    end
end
