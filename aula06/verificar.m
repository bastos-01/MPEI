function r = verificar(B,elemento,k)
    n = length(B);
    key = elemento;
    r = true;
    
    for i=1 : k
    
        key=[key num2str(i)];
        pos = string2hash(key);
        pos=mod(pos,n)+1;

        %fprintf(1,"key = %s -> pos = %d\n",elem,pos)
    
        if B(pos)==0
          r=false;
          break
        end
    end
end