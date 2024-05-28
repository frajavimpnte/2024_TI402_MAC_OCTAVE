
%%   ITESS-TICS
%%   Enero-Junio 2024
%%   Matemáticas Áplicadas a Comunicaciones
%%   Unidad 4: Sietemas LIT
%%   Amplificador inversor
%%   27/mayo/2024
%%   FJMP


% parametros de una señal seno
f = 1;
A = 1;

R1 = 1000;
R2 = 330;

% periodo
T = 1/f;
nPuntos = 100;

dt = T/nPuntos;

t = 0:dt:T;
ei = A*sin(2*pi*t);

%% modelo del amplificador
eo = - R2/R1 * ei;


plot(t, ei);
grid on
hold on
xlabel('Tiempo (s)')
ylabel('Voltaje (s)')

plot(t, eo);

