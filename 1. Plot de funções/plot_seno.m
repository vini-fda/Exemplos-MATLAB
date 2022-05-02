%% Criando os arrays
X = -2*pi:0.01:2*pi;
Y = sin(X);
%% Efetuando o plot
plot(X, Y)
%% Configurações do plot
% 1. 'Xtick' são os pontos demarcados no eixo x
set(gca,'XTick',-2*pi:pi:2*pi)
% 2. 'XTickLabel' são as etiquetas dos pontos
% perceba que, aqui, as etiquetas vão de pi em pi
set(gca,'XTickLabel', {'-2\pi','-\pi','0','\pi','2\pi'})
% Adicionar uma grid
grid on

%% OPCIONAL: exportar a figura com uma resolução maior
f = gcf;
exportgraphics(f,'plot_seno.png','Resolution',300)