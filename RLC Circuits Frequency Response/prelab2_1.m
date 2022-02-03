%specifying value of the components
R=390;
C=270*10^(-9);
L=10^(-2);
f = logspace(2,5,2000000); %100Hz to 100kHz
omega=2*pi.*f;

Z_R=R;  %Impedance across resistor
Z_L=1i*L.*omega; %Impedance across inductor
Z_C=1./(1i*C.*omega); %Impedance across capacitor

Z_T = Z_R+Z_L+Z_C; %Total Impedance

H_R=Z_R./Z_T; % Transfer Function for Resistor
semilogx(f,(20*log10(abs(H_R))),'color', [0 0.5 0], 'linewidth', 1.1); % Bode Plot for Resistor

grid on;
hold on;

H_C = Z_C./Z_T; % Transfer Function for Capacitor
semilogx(f,(20*log10(abs(H_C))),'r', 'linewidth', 1.1); % Bode Plot for Capacitor

grid on;
hold on;

H_L= Z_L./Z_T;   % Transfer Function for Inductor
semilogx(f, 20*log10(abs(H_L)),'k', 'linewidth', 1.1); % Bode Plot for Inductor
grid on;
hold on;


H_L_C = (Z_L+Z_C)./Z_T;  % Transfer Function for Inductor and Capacitor
semilogx(f, 20*log10(abs(H_L_C)),'b', 'linewidth', 1.1); % Bode Plot for Inductor and Capacitor

title('Bode Magnitude Plot')
xlabel('Frequency / (Hz)')
ylabel('Magnitude / (dB)')
legend('Band Pass - Resistor','Low Pass - Capacitor', 'High Pass - Inductor','Notch/Band Stop Pass - Inductor and Capacitor')
