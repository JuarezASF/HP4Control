function P = polypower(p, n)
%retorna potência n do polinômio p. se n==1: [1], se n>1, iterativamente
%calcula o produto de n por n.
    if(n==0)
        P = [1];
        return;
    end

    P = p;
    for i = 2:n
        P = conv(P,p);        
    end
end
