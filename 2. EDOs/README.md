# 2. EDOs

Nesta pasta, temos exemplos de solução numérica de problemas de valor inicial com EDOs.

Todos os exemplos têm plots já feitos para poder visualizar a solução. Basta apenas copiar e executar!

## Dicas gerais

Para resolver EDOs em MATLAB, na maioria das vezes utiliza-se a função `ode45`. Portanto, é muito importante ler a documentação do MATLAB([ODE45: Solve nonstiff differential equations — medium order method](https://www.mathworks.com/help/matlab/ref/ode45.html)) e ver os exemplos que a utilizam.

Em particular, a pasta "Explicação" dá dicas introdutórias para usar essa ferramenta.

## 2.1 `edo_exponencial.m`

Exemplo mais básico, que resolve a EDO `dy/dx = k*y`.

## 2.2 `edo_mma.m`

Exemplo um pouco mais avançado, que resolve um sistema massa-mola-amortecedor(abreviado "mma").

## 2.3 `edo_mma_forcada.m`

Exemplo que resolve um sistema massa-mola-amortecedor com uma força externa que varia com o tempo f(t).