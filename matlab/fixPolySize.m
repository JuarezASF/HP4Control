function P = fixPolySize(p, n)

    P = p();
    
    if(n > numel(P))
       P = [zeros(1,n - numel(P)), P];
    end


end