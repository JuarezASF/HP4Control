function P = polypower(p, n)
    if(n==0)
        P = [1];
        return;
    end

    P = p;
    for i = 2:n
        P = conv(P,p);        
    end
end
