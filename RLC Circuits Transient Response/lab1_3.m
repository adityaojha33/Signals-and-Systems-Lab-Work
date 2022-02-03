omega = 258198.9;
t= 0:0.0000002:0.0003;
A = -1;% coefficient C1 
B = -258198.9;%coefficient C2
y = 1 + exp(-omega*t).*(A + B*t);% General Solution for critically damped Response 
plot(t,y);
ylim([0 1.4]);
xlim([0 2*10^-4]);
xlabel("time(t) s");
ylabel("V_c(t) [A]");