function key = randomKey()
    
    keySize = randi([3 20]);
    l = ['a': 'z' 'A': 'Z'];
    key = zeros(1, keySize);
    
    for i = 1: keySize
        r = randi([1 length(l)]);
        key(i) = l(i);
    end
end