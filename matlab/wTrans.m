function [Num,Den] = wTrans(A,B,P,Q)
%Dado função racional G(z) = A(z)/B(z) e transforção racional z = P(w)/Q(w)
%calcula G'(w). 


    % A = [a_N .... a0] has N+1
    % B = [a_M .... b0] has M+1
    
    A = A();
    B = B();
    P = P();
    Q = Q();
    
    N = numel(A) - 1;
    M = numel(B) - 1;
    
    Num = zeros(1,N+1);
    Den = zeros(1,M+1);
    
        for i = 1:(N+1)
            Num = Num + fixPolySize(A(i) * conv(polypower(P, N+1-i), polypower(Q, i-1)), N+1);
        end
        for i = 1:(M+1)
            Den = Den + fixPolySize(B(i) * conv(polypower(P, M+1-i), polypower(Q, i-1)), M+1);
        end
    
    if M < N
        Den = conv(Den, polypower(Q, N-M));
    end
    if M > N
        Num = conv(Num, polypower(Q, M-N));
    end
    
    Den = fixLeftZeroPoly(Den);
    c = Den(1);
    Den = Den/c;
    Num = Num/c;
end