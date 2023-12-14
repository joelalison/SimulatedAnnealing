% Definir parâmetros da função de Rosenbrock
a = 1;
b = 100;

% Criar uma grade de valores para x e y
x = linspace(-2, 2, 100);
y = linspace(-2, 2, 100);

[X, Y] = meshgrid(x, y);

% Calcular os valores da função de Rosenbrock para cada par (x, y)
Z = (a - X).^2 + b * (Y - X.^2).^2;

% Plotar a função de Rosenbrock em 3D
figure;
surf(X, Y, Z);
title('Função de Rosenbrock');
xlabel('X');
ylabel('Y');
zlabel('f(X, Y)');

% Adicionar uma visualização mais nítida da superfície
shading interp;
