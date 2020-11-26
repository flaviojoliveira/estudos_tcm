syms t u_int(t) R C u_out(t);
eq132 = u_in - R * C * diff ( u_out(t), t) -u_out(t)==0;

l_eq132 = laplace(eq132);
