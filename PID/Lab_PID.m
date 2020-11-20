
%Simulador de funções de transferência

clear  % Limpa workspace
clc    % Limpa lista de comandos

% Definir as funções de transferência

G1 = tf([10],[2 1])  
G2 = tf([10],[4 10 1])
G3 = tf([10],[4 4 1])
G4 = tf([10],[4 1 1])
G5 = tf([0.3],[1 0])
G6 = tf([30 10],[2 1])
G7 = tf([-20 10],[4 10 1])
G8 = tf([30 10],[-2 1])

% Gerar perturbação com una mudança degrau

step(G1,G2,G3,G4,G5,G6,G7)