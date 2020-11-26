clc
clear
#RLC - solução analítica

//dados problema
A = 1.0; f = le+4;
R = 10;     //Resistor (Ohm)
L = 1e-3;   //Indutor (H)
C = 1e-6;   //capacitor(F))

// Problem function
function zdot=RLCsystem(t, y)
    z1 = y(1); z2 = y(2);
     // Compute input
    Vin = A*sin(2*%pi*f*t);
    zdot(1) = z2; zdot(2) = (Vin - z1 - L*z2/R) /(L*C);
endfunction

// Simulation time [1 ms]
t = linspace(0,1e-3,1001);
// Initial conditions and solving the ode system
y0 = [0;0]; t0 = t(1);
y = ode(y0,t0,t,RLCsystem);
// Plotting results
Vin = A*sin(2*%pi*f*t)';
scf(1); clf(1); plot(t,[Vin,y(1,:)']); legend(["Vin";"Vout"]);
;
