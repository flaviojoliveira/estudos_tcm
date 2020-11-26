clc
clear
s = %s;
//num = (coloque aqui a equação do numerador );
num = (G * (1 -e ^ -(t/tal));
den = 1;
Funcao_de_transferencia = syslin('c', num, den;
t=0:0.05:30;
saida = csim('step',t,Funcao_de_transferencia);
plot2d(t,saida);
