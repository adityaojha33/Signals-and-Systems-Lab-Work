zeta = 4905.8;
omega = 258150.5;
t = 0:0.0000002:0.0002;
A = -1;% coefficient C1 
B = -0.019;%coefficient C2
y = 1 + exp(-zeta*t)*A.*cos(omega*t)+ B.*sin(omega*t);% General Solution for under damped Response 
plot(t,y);
ylim([0 2]);
xlim([0 2*10^-4]);
xlabel("time(t) s");
ylabel("V_c(t) [A]");