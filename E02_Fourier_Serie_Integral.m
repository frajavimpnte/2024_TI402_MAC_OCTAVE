%% ITESS-TICS
%% Enero-Junio 2024
%% MATEMATICAS APLICADAS A COMUNICACIONES
%% Prof. FJMP
%% UNIDAD 3: Series Fourier
%% Descripsión: Series de Fourier
%% 08 mayo 2024
pkg load symbolic
syms t n

a0 =  double (  (1/pi) * (int(0, t, -pi, 0) + int(pi - t, 0, pi) )  )
an =   (1/pi) * (int(0*sin(n*t), t, -pi, 0) +
                          int((pi - t)*sin(n*t), 0, pi) )
bn =  (1/pi) * (int(0*cos(n*t), t, -pi, 0) +
                          int((pi - t)*cos(n*t), 0, pi) )

