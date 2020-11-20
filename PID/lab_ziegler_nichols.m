clear
clc
den=conv([1 1],[1 1]);
den=conv(den,[1 1]);
Hs=tf(1,den)
t=0:0.01:12;
yt=step(Hs,t);
plot(t,yt)
grid
axis([0 12 -0.5 1.1])
ginput(2)

a=0,1586
L=0,7001

K=1,2/a
Ti=2*L
Td=L/2
ginput(2)
