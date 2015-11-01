function dfdx = diffApprox(f, x)
%Aproxima a derivada de f em x utilizando um esquema de diferenças finitas
%centradas de segunda ordem.
    e = 0.000001;
    dfdx = (f(x + e) - f(x - e))/(2*e);

end

