% Over Sampling
fs=100000;
f=1000;
t=0:1/fs:0.1;
w = 2*pi*50;
x = 5*sin(w*t);
subplot(3,1,1);
plot(t,x,'b');
title('Continuous Input Signal x(t)');
xlabel('time [s]'); ylabel('Amplitude [V]');
grid on;
hold on;

rec=[0.1 50];
for train = 1: length(rec)
    for rate = 1: length(f)
        
        p = max(square(2*pi*f(rate)*t,rec(train)),0);
        subplot(3,1,2);
        plot(t,p,'b');
        title('Sampling Rectangular Pulse p(t)');
        xlabel('time [s]'); ylabel('Amplitude [V]');
        grid on;
        hold on;
        
        output = x.*p;
        subplot(3,1,3);
        plot(t,output, 'b');
        xlim([0,0.1])
        ylim([-5,5]);
        title('Output Sampled Signal');
        xlabel('time [s]'); ylabel('Amplitude [V]');
        grid on;
        hold on;
    end
end