%% ITESS-TICS
%% Enero-Junio 2024
%% MATEMATICAS APLICADAS A COMUNICACIONES
%% Prof. FJMP
%% UNIDAD 2: Laplace
%% Descripsión: Transforamada de Laplace
%% 08 mayo 2024
pkg load symbolic
syms  s t

R1 = 1000
R2 = 1000
C = 100e-6
disp('Funcion: f = sin(2*pi*1*t)')
f = sin(2*pi*1*t)

disp('Laplace: F = laplace(f)')
F = laplace(f)

disp('Funcion del circuito de retardo')
Y = -R2 / (R1*(R2*C*s + 1))

disp('H = Y F')
H = expand(Y * F)

%disp('Tranformada inversa de Laplace')
y = ilaplace(H)

