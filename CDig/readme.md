#Utilzação

Descrevo aqui a utilização de cada programa. Os programas são feitos em mode RPN, não imagino qual
seja o funcionamente deles em modo algébrico.

##ZPKEval
Avalia função de transferência definida pelos conjunto de Zeros, Polos e ganho K no ponto informado.
Coloque na pilha:
    *Conjunto de zeros do função de transferência
    *Conjunto de polos do função de transferência
    *Ganho
    *Ponto em que se deseja avaliar a func. de trans.

Aperte ZPKEval.

Um conjunto é entrado entre {} e os valores separados por vírgulas. Um conjunto vazio(sem zeros 
por exemplo) pode ser entrado com {}.
Ex.:
{8, 10}
{8}
80
i pi * 2 /
ZPKEval

Vai calcular o valor de G(s) = 80 * (s-8)/((s-8)(s-10) em s = j*pi/2;

Sobre implementação:

N <- # elem em Zeros
total = 1
se N != 0
    para i de 1 a N:
        total *= z - zeros(i)
M <- # elem em Polos
se M != 0
    para j de 1 a M:
        total *= z - polos(j)
total *= K


##conM

Calcula a matriz de controlabilidade. Dado H e G, o programa calcula:
[H : GH : ... : G^{n-1}H]

Coloque na pilha:
    *Matriz H
    *Matriz G

Aperte conM. 

Acho que tem um bug nesse programa, vale a pena testar primeiro com uns valores conhecidos.
