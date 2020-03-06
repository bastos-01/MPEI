% Pedro Bastos

% Para representar a função massa de probabilidade, tem de obedecer aos
% seguintes axiomas:
%     px(xi) >= 0 
%     sum(px(xi)) = 1
% espaço de amostragem S = {1, 2, ,3 ,4 }

pX = zeros(1, 4);
sumX = 0;
probNegativa = 1;

for x = 1: 4
    pX(x) = (x + 5)/30;
    if(pX(x) < 0)
        probNegativa = 0;
    end
    sumX = sumX + (x + 5)/30;
end

if (sumX == 1 && probNegativa == 1)
    disp("A função dada pode representar uma variável aleatória pois as probabilidades são todas positivas e o somatório é igual a 1.");
elseif (sumX ~= 1 && probNegativa == 1)
    disp("A função dada não pode representar uma variável aleatória pois o somatório das probabilidades é diferente de 1.");
elseif (sumX == 1 && probNegativa ~= 1)
    disp("A função dada não pode representar uma variável aleatória pois uma ou mais probabilidades são negativas.");
else
    disp("A função dada não pode representar uma variável aleatória pois uma ou mais probabilidades são negativas e o somatório é diferente de 1.");
end



