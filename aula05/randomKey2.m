function key = randomKey2(pmfLetras, l)
    keySize = max([1, floor(10 + 5 * randn())]);
    chave = pmf(l, pmfLetras, keySize);
    key = char(chave);
end