function hash = stringParaHash(key, N)
    key = double(key);
    hash = 5381 * ones(size(key, 1), 1);
    for i = 1: size(key, 2)
        hash = mod(hash * 33 + key(:, i), N);
    end
end