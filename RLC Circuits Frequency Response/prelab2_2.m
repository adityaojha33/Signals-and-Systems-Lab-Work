R=390;
C=270*10^(-9);
L=10^(-2);
f = logspace(2,5,200000);
omega=2*pi.*f;

Z_R=R;  %Impedance across resistor
Z_L=1i*L.*omega; %Impedance across inductor
Z_C=1./(1i*C.*omega); %Impedance across capacitor

Z_T = Z_R+Z_L+Z_C; %Total Impedance

H_R=Z_R./Z_T; % Transfer Function for Resistor
semilogx(f,(20*log10(abs(H_R))),'color', [0 0.5 0], 'linewidth', 1.1); % Bode Plot for Resistor
grid on;
hold on;
Con = -3 * (f./f); %-3dB line
[x,y] = intersect(Con, H_R);

semilogx(f,Con,'r', 'linewidth', 1.1);
grid on;
hold on;
Cut = 0*(f./f) ;
[a,b] = intersect(Cut,f);
semilogx(f,Cut,'b');


title('Bode Magnitude Plot For Band Pass Filter');
xlabel('Frequency / (Hz)');
ylabel('Magnitude / (dB)');
legend('Band Pass - Resistor', '-3 dB Line');
