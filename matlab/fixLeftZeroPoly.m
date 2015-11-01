function P = fixLeftZeroPoly(p)
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