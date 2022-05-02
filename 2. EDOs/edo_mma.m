%% EDO: Massa-mola-amortecedor homogênea
% Definir parâmetros e c.i.'s
k = 3.0;
beta = 1.0;
m = 1.0;
y_0 = [0.0 1.0];
t_limites = [0 15];
% Definir função "derivada do estado"
dydt = @(t, y) [y(2); -(beta*y(2) + k*y(1))/m];
% Resolver PVI
[t, y] = ode45(dydt, t_limites, y_0);
% Fazer plot
plot(t,y(:,1),'-')
hold on
plot(t,y(:,2),'-.')
title('Solução do PVI da EDO L.H. 2ª Ordem')
legend('x [m]','v [m/s]')
xlabel('t [s]')
hold off