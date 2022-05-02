%% EDO Linear e Homogênea de 1ª Ordem
% Definir parâmetros e condições iniciais
k = 3.0;
y_0 = 1.1;
x_limites = [0 10];
% Resolver PVI
[X, Y] = ode45(@(x, y) k*y, x_limites, y_0);
% Plotar gráfico
plot(X, Y)
title('Solução do PVI da EDO L.H. 1ª Ordem')
ylabel('y')
xlabel('x')