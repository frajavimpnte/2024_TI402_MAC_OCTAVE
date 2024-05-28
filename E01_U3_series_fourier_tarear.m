%%   ITESS-TICS
%%   Enero-Junio 2024
%%   Matemáticas Áplicadas a Comunicaciones
%%   Unidad 3: Series de Fouier
%%   Aprotimación ejemplo 01
%%   16/mayo/2024
%%   FJMP

t = -pi:0.01:pi;
sz = size(t);
ft = zeros(sz);

for i=1:sz(2)
    ft(i) = t(i);
endfor

plot(t, ft)
grid on
hold on

%%% aprotimaciones
ft_1 = 2*1/1*sin(1*t)
ft_2 = ft_1 - 2*1/2*sin(2*t)
ft_3 = ft_2 + 2*1/3*sin(3*t);
##plot(t, ft_1)
##plot(t, ft_2)
plot(t, ft_3)


