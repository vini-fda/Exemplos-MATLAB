function dydx = destado(x, y, k)
% Função "derivada do estado"
% calcula a derivada de y em relação a x
% para cada valor de x.
% ---------------------
% Perceba que "x" não é utilizada aqui, mas mantemos
% essa variável pois ode45() espera que as entradas 
% da função sejam da forma f(x, y)
    dydx = k * y;
end
