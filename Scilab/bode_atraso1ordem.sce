clc
clear
s = %s;

num = 5;
den = 2*s+1;
G = syslin ('c', num/den);
bode(G,0.001, 1000);
