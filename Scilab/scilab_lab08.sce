clc
clear
R=2200; //ohm
L=3.8e-3;//henry
C=2.2e-6;//faraday
a = [0, 1; -1/(L*C),-R/L];
b = [0; R/L];
c = [0,1];
d = 0;
//sys = clss(a,b,c,d)
RLCss = clss(a,b,c,d, 'InputName','u_in','outputname','u_out');
[ystep,tstep] = step(RLCss);
impulse(RLCss,0:1e-7:6e-6);
