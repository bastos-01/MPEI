%% a)

T = [0.84 0.1 0 0.5;
    0.1 0.7 0 0.1;
    0.05 0.1 0.8 0.1;
    0.01 0.1 0.2 0.3 ];

x = [1 2 10 5]';

x8 = T^8 * x;


%% b)
maxValues = x;
anterior = zeros(1,4);

while (sum(x ~= anterior) ~= 0)
   
    anterior = x;
    x = T * x;
    
    if(x(1) > maxValues(1))
        maxValues(1) = x(1);
    end
    if(x(2) > maxValues(2))
        maxValues(2) = x(2);
    end
    if(x(3) > maxValues(3))
        maxValues(3) = x(3);
    end
    if(x(4) > maxValues(4))
        maxValues(4) = x(4);
    end
    
end
disp(maxValues);


%% c)
xC = [1 2 10 5]';
contador = 0;

while (xC(4) > 2)
    xC = T * xC;
    contador = contador + 1;
end

disp(contador);




