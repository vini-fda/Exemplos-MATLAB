%% Criando os arrays
% Declaração da função f(x)
f = @(x) sin(x) + cos(3*x) + sin(7*x);
% Intervalo em x, bem como arrays
dx = 0.2;
X = 0:dx:2*pi;
Y = f(X);
%% Efetuando o plot
stem(X, Y)
%% Configurações do plot
% 1. 'Xtick' são os pontos demarcados no eixo x
set(gca,'XTick',0:dx:2*pi)
% OPCIONAL: você também pode demarcar pontos no eixo y
% Aqui, estou demarcando os valores em y de -amplitude até +amplitude
% com intervalo de 0.5 em 0.5 Volt
amplitude = max(abs(Y));
l = 0:0.5:amplitude;
set(gca,'YTick', unique([-l l]))
% 2. 'Xlim' são os limites do eixo x(inferior e superior)
xlim([0 2*pi]);
% 3. Adicionar título
title('Sinal em tempo discreto')
% 4. Adicionar etiqueta para o eixo y
ylabel('Intensidade [V]')
% 5. Adicionar etiqueta para o eixo x
xlabel('Tempo [\mus]')
% Adicionar uma grid
grid on

%% OPCIONAL: exportar a figura com uma resolução maior
f = gcf;
exportgraphics(f,'plot_sinal_discreto.png','Resolution',300)