# Problema

Implementar o pseudo-código referente ao algoritmo do Simulated Annealing da aula 3 e rodar o código minimizando a função de Rosenbrock:

---

# Metodologia

Foi criado um algoritmo do Simulated Annealing e um script chamado main_SimulatedAnealing para testar a função criada. Além disso foi criado um script para verificar o ponto de mínimo da função de Rosenbrock utilizando cálculo numérico de Quasi-Newton.

# Função Simulated Annealing

Os parâmetros do algoritmo foram escolhidos por tentativa e erro:
- Temperatura inicial: 80
- Taxa de resfriamento: 0.9
- Iterações: 20.000

A função objetivo é encontrar o mínimo da função de Rosenbrock definida por:

$` f(x, y) = (1 - x)^2 + 100 \cdot (y - x^2)^2 `$

# Discussão

Foi testado inicialmente o algoritmo de Quasi-Newton para verificar a solução e foram encontrados valores de $` (x,y,z) = (1,0.9999,0.00000000001) `$ que é próximo de $` (1,1,0) `$

Como existe uma componente aleatória envolvida no processo do algoritmo do Simulated Annealing, o resultado sempre será diferente, porém para a escolha destes parâmetros os valores de x e y estão com erro apenas na segunda casa decimal, ou seja de centésimos, enquanto que o valor da função objetivo apresenta um erro na quarta casa decimal. Algo em torno de $` (x,y,z)  \simeq  (1.0XX,1.0XX,0.000X) `$

