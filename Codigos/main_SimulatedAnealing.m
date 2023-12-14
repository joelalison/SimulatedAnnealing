clear,clc,close all

addpath('utils')
% Função de Rosenbrock
rosenbrock = @(x, y) (1 - x).^2 + 100 * (y - x.^2).^2;

% Parâmetros do Simulated Annealing
EstadoInicial = [0, 0]; % chute inicial
temperature = 80; % Temperatura inicial
TaxaDeResfriamento = 0.9; % Taxa de resfriamento
Iteracoes = 20000; % Número de iterações

% Função objetivo para o simulated anealing
FuncaoObjetivo = @(state) rosenbrock(state(1), state(2));

simulatedAnealing(EstadoInicial,temperature,TaxaDeResfriamento,Iteracoes,FuncaoObjetivo)