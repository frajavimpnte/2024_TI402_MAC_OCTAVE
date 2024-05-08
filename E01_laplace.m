%% ITESS-TICS
%% Enero-Junio 2024
%% MATEMATICAS APLICADAS A COMUNICACIONES
%% Prof. FJMP
%% UNIDAD 2: Laplace
%% Descripsión: Transforamada de Laplace
%% 08 mayo 2024
pkg load symbolic
syms t positive

%% definir una función
disp('Función en el tiempo')
f = 4*sin(2*t)

%% transformada de Laplace
disp('Tranformada de Laplace')
F = laplace(f)

%% transformada inversa Laplace
syms S

disp('Función en S')
Y = 1/S^3

disp('Tranformada inversa de Laplace')
y = ilaplace(Y)

