function markov(T, v, lim )
    if(nargin < 3)
        v = ones(size(T,1), 1)/6;
        lim = 0.00001;
    end
    anterior = zeros(size(T,1),1);
    %m=[v(:)];
    while (sum(abs(anterior - v) > lim) ~= 0)
        anterior = v;
        v = T * v;
        %plot(m');
        %m=[m v];
    end
    disp(v);
    sum(v)
    
end
    