zeta = 1953.6;
omega = 15893.6;
t= 0:0.0000002:0.0020;
A = 0.012;% coefficient C1 
B = 0.00147;%coefficient C2
y = exp(-zeta*t)*A.*cos(omega*t)+ B.*sin(omega*t);% General Solution for under damped Response 
plot(t,y);
xlabel("time(t) [s]");
ylabel("I_c(t) [A]");