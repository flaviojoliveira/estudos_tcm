% simulador de sistema de controle com feedback
Gp = tf([1],[8 15 8 1])

% Funcion de transferencia de controlador PID
Kc = 5.5;
Tao_I = 10;
Tao_D = 0;

Gc = Kc + tf([Kc],[Tao_I 0]) + tf([Kc*Tao_D 0],[1])

% Funcion de transferencia a Lazo Cerrado
G_CL = Gp*Gc/(1+Gp*Gc);
[y,t] = step(G_CL);

% Grafica t vs y
plot(t,y,'k','LineWidth',1)
xlabel('t, min','FontSize',10);
ylabel('y(t)','FontSize',10);
axis ([0 max(t) 0 1.1*max(y)])
axis square

line([0 max(t)],[1 1],'Color','b','LineStyle','--')