fs = 100000; %sampling frequency
fc = 20000; %carrier frequency
fm = 500; %modulation frequency

N = 25000; %number of samples
Ts = 1/fs; %sampling period
m = 0.5; %modulation index

t = [0: Ts: N*Ts-Ts];
f = [-fs/2: fs/N: fs/2 - fs/N];

s = 5*sin(2*pi*fc*t); %carrier signal
x = sin(2*pi*fm*t); %modulation signal

y = ((1+m*x).*s); %modulated signal
Y= fft(y);

subplot(2,1,1);
plot(t,y);
xlim([0,0.01]);
xlabel('Time [s]'); ylabel('Amplitude [V]');
title('Modulated signal in Time Domain');

subplot(2,1,2);
plot(f,fftshift(abs(Y)));
xlabel('Frequency'); ylabel('Amplitude');
title('Modulated signal in Frequenct Domain');