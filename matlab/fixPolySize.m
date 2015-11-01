function P = fixPolySize(p, n)
%Arruma tamanho do polinômio para ser tamanho n se possível. 
%fix([1 1], 3) retorna [0 1 1]
%Se n < numel(p), retorna p

    P = p();
    
    if(n > numel(P))
       P = [zeros(1,n - numel(P)), P];
    end


end