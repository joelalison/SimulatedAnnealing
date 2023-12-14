clear,clc,close all
% Função de Rosenbrock
rosenbrock = @(x) (1 - x(1)).^2 + 100 * (x(2) - x(1).^2).^2;

% Condições iniciais
x0 = [0; 0];

% Encontrar o mínimo global pelo método de Quasi-Newton
options = optimoptions('fminunc', 'Algorithm', 'quasi-newton');
[x_min, fval] = fminunc(rosenbrock, x0, options);

% Exibir a solução encontrada
disp('Solução encontrada analiticamente:');
disp(['X: ', num2str(x_min(1))]);
disp(['Y: ', num2str(x_min(2))]);
disp(['Valor da Função de Rosenbrock: ', num2str(fval)]);
