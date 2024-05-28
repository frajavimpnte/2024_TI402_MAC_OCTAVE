%%   ITESS-TICS
%%   Enero-Junio 2024
%%   Matemáticas Áplicadas a Comunicaciones
%%   Unidad 3: Series de Fouier
%%   Sumas de funciones seno y coseno
%%   16/mayo/2024
%%   FJMP


% grafica de función seno
f = 0.0001;      % frecuencia
A = 5;      % amplitud


T = 1/f;    % periodo

nPoints = 100;
dt = T/nPoints;

t=0:dt:T;
st = A* sin (2 * pi * f * t);
##
##f2 = 2;
##st2 = sin (2 * pi * f2 * t);
##
##f3 = 4;
##st3 = sin (2 * pi * f3 * t);
##
##
##f3 = 4;
##st4 = sin (2 * pi * f3 * t);
##
##
##stN = st + st2 + st3 + st4;
plot(t, st)
grid on
##hold on
##
##plot(t, st2)
##plot(t, st3)
##plot(t, st4)
##plot(t, stN)






