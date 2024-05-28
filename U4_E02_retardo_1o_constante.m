%% ITESS-TICS
%% Enero-Junio 2024
%% MATEMATICAS APLICADAS A COMUNICACIONES
%% Prof. FJMP
%% UNIDAD 2: Laplace
%% Descripsión: Transforamada de Laplace
%% 08 mayo 2024
pkg load symbolic
syms  s t

%% valores indicados
R1 = 1000
R2 = 1000
C = 100e-6

%% funcion de entrada
disp('Funcion: f = 5')
ei = 5  + 0*t

disp('Laplace: Ei = laplace(ei)')
Ei = laplace(ei)

%% Modelo del sistema
disp('Funcion del circuito de retardo')
Y = -R2 / (R1*(R2*C*s + 1))


%% Respuesta del sistema
disp('H = Y Ei')
H = expand(Y * Ei)

%disp('Tranformada inversa de Laplace')
y = ilaplace(H)

