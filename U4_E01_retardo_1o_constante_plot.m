
%%   ITESS-TICS
%%   Enero-Junio 2024
%%   Matemáticas Áplicadas a Comunicaciones
%%   Unidad 4: Sietemas LIT
%%   27/mayo/2024
%%   FJMP


% parametros de una señal seno
A = 5;

% periodo
nPuntos = 100;
T = 3;
dt = T/nPuntos;

t = 0:dt:T;
ei = A + 0*t;
%ei = A*sin(2*pi*f*t)

%% respuesta del amplificador, cambie segun sus valores obtenidos
%eo =  - exp( -t / (C*R2))/(C*R1) .* ei;
eo =  -5 + 5*exp(-10*t);

plot(t, ei, "LineWidth", 2);
grid on
hold on
xlabel('Tiempo (s)')
ylabel('Voltaje (s)')

plot(t, eo, "LineWidth", 2);

