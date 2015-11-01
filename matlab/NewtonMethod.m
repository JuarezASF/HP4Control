function x = NewtonMethod( f, x0 )
%Procura zero de função anônima f recebida. Inicia busca a partir de x0.
%No caso da existência de múltiplos zeros, x0 influencia qual zero será
%retornado. Se zero não existir, algoritmo irá rodar o número de iterção 
%máximas! Ou seja, antes de procurar um zero, tenha certeza de que ele 
%existe!
%usage example: 
%  f = @(w) phaseDeg(100/(w*j + 10)) - -45;
%  w = NewtonMethod(f, 1)
%output:
% w =
%    10.0000

x = x0;
e = 0.000001;
i = 0;
NMAX = 200;
for i=1:200
    fx = f(x);
    dfx= diffApprox(f, x);
    
    if(dfx == 0)
        disp('[df/dx is zero!]');
        break
    end
    
    s = fx/dfx;
    
    if(abs(s) < e)
        disp('[step is too small!]');
        break
    end
    
    x = x - s;
end
if(i == NMAX)
    disp('[reached limited number of iterations!]');
end

end

