function P = fixLeftZeroPoly(p)
%remove os zeros a esquerda de um polinômio. Isto é: [0 1 1] -> [1 1]

P = [];
firstNonZero = -1;
for i = 1:numel(p)
    if (p(i) ~= 0)
        firstNonZero = i;
        break
    end
end
P = p(firstNonZero:numel(p));
end