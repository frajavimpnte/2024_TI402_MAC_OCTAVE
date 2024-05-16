

%%   ITESS-TICS
%%   Enero-Junio 2024
%%   Matemáticas Áplicadas a Comunicaciones
%%   Unidad 3: Series de Fouier
%%   Integral Compleja de Fourier
%%   16/mayo/2024
%%   FJMP

pkg load symbolic
syms x n

%% ejemplo 1, integral compleja serie de Fourier
I = sqrt(-1)
p = pi
%%usar cuando hay dos partes
%%cn =  1/(2*p)*( int( 0*exp(-I*n*pi*x/p),x,-pi,0 ) + int( (pi-x)*exp(-I*n*pi*x/p),x,0,pi ) )

%% usar cuando hay una parte
cn =  1/(2*p)*( int( x*exp(-I*n*pi*x/p),x,-pi,pi ) )


%% calcular coeficientes de Fourier complejos
c0  = double ( subs (cn, n,  0) )
c1  = double ( subs (cn, n,  1) )
c_1 = double ( subs (cn, n, -1) )
c2  = double ( subs (cn, n,  2) )
c_2 = double ( subs (cn, n, -2) )
c3  = double ( subs (cn, n,  3) )
c_3 = double ( subs (cn, n, -3) )
c4  = double ( subs (cn, n,  4) )
c_4 = double ( subs (cn, n, -4) )
c5  = double ( subs (cn, n,  5) )
c_5 = double ( subs (cn, n, -5) )
c6  = double ( subs (cn, n,  6) )
c_6 = double ( subs (cn, n, -6) )
c7  = double ( subs (cn, n,  7) )
c_7 = double ( subs (cn, n, -7) )

##%%% aproximaciones
x=-pi:0.01:pi;

fx_0 = real(c0 * exp(I*0*pi*x/p));
fx_1 = fx_0 + real(c1*exp(I*1*pi*x/p) + c_1*exp(I*-1*pi*x/p) );
fx_2 = fx_1 + real(c2*exp(I*2*pi*x/p) + c_1*exp(I*-2*pi*x/p) );
fx_3 = fx_2 + real(c3*exp(I*3*pi*x/p) + c_3*exp(I*-3*pi*x/p) );
fx_4 = fx_3 + real(c4*exp(I*4*pi*x/p) + c_4*exp(I*-4*pi*x/p) );
fx_5 = fx_4 + real(c5*exp(I*5*pi*x/p) + c_5*exp(I*-5*pi*x/p) );
fx_6 = fx_5 + real(c6*exp(I*6*pi*x/p) + c_6*exp(I*-6*pi*x/p) );
fx_7 = fx_6 + real(c7*exp(I*7*pi*x/p) + c_7*exp(I*-7*pi*x/p) );

plot(x, fx_0)
grid on
hold on

plot(x, fx_1)
plot(x, fx_2)
plot(x, fx_3)
plot(x, fx_4)
plot(x, fx_5)
plot(x, fx_6)
plot(x, fx_7)



