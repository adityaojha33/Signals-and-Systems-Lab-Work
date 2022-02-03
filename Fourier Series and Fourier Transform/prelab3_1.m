%Original Function Plot
T = 2*pi;
t = (-T/2:0.0001:T/2);
y = (2/T)*t;
figure(1);
plot(t,y);
xlim([-pi,pi]);
grid on;
xlabel("Time /[s]");
ylabel("f(t)")
title("Original function [-π,π]");