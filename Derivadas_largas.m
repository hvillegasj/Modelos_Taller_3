%Codigo para derivar mas facil

%Simbolo que representa el tiempo óptimo de engorde
syms t_e

%Tiempo óptimo con respecto a tiempo de engorde
t=(0.1*t_e+3.25+sqrt(0.01*t_e^2+0.41*t_e+10.5625))/(0.15);

%Ganancia con respecto a tiempo de engorde
G=-0.05*t^2+0.8*t+(0.025*t^3-1.625*t^2)/(t_e)+130;

%Derivada de t con respecto a t_e evaluada en t_e=5
dt=diff(t);
dt=vpa(subs(dt,t_e,5))

%Derivada de G con respecto a t_e evaluada en t_e=5
dG=diff(G);
dG=vpa(subs(dG,t_e,5))