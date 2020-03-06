function B = AdicionarElemento(B, elemento, k)
    n = length(B);
    key=elemento;
    for i=1: k
        key=[key num2str(i)];
        pos = string2hash(key);
        pos = mod(pos,n) + 1;
        %fprintf(1,"key = %s -> pos = %d\n",elemento,pos)
        B(pos)=1;
    end
end