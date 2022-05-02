%% EDO: Pêndulo simples
% Definir parâmetros e c.i.'s
g = 9.81;
l = 1.0;
m = 0.5;
y_0 = [0.0 4.0];
t_limites = [0 15];
% Definir função "derivada do estado"
dydt = @(t, y) [y(2); -(g/l)*sin(y(1))];
% Resolver PVI
[t, y] = ode45(dydt, t_limites, y_0);
% Converter radianos para graus
y = rad2deg(y);
% Fazer plot
plot(t,y(:,1),'-')
hold on
plot(t,y(:,2),'-.')
title('Solução do PVI do Pêndulo Simples')
legend('\theta [º]','\omega [º/s]')
xlabel('t [s]')
hold off