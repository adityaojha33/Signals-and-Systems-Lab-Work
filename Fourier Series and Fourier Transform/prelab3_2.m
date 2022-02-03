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

%First five harmonics plot
f = 0;
for n=1:5
    f = f + ((-2*(-1)^n/(n*pi)))*sin(n*2*pi/T*t);
end
%plot
figure(2);
plot(t,y);
hold on;
plot(t,f);
xlim([-pi,pi]);
title('Fourier Series');
xlabel("Time /[s]");
ylabel("Magnitude /[V]")
title("First Five Harmonics of f (t)");