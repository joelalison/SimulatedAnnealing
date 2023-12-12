function simulatedAnealing(varargin)
    
    EstadoInicial = varargin{1};
    temperature = varargin{2};
    TaxaDeResfriamento = varargin{3};
    Iteracoes = varargin{4};
    FuncaoObjetivo = varargin{5};
    % Inicialização
    SolucaoAtual = EstadoInicial;
    CustoAtual = FuncaoObjetivo(SolucaoAtual);
    
    % Loop principal do Simulated Annealing
    for iter = 1:Iteracoes
        % Gera uma solução vizinha aleatória
        SolucaoVizinha = SolucaoAtual + randn(1, 2);
        
        % Calcula o custo da solução vizinha
        ValorSolucaoVizinha = FuncaoObjetivo(SolucaoVizinha);
        
        % Aceita a solução vizinha com probabilidade decrescente
        if ValorSolucaoVizinha < CustoAtual || rand() < exp((CustoAtual - ValorSolucaoVizinha) / temperature)
            SolucaoAtual = SolucaoVizinha;
            CustoAtual = ValorSolucaoVizinha;
        end
        
        % Reduz a temperatura
        temperature = temperature * TaxaDeResfriamento;
    end
    
    % Exibe a solução encontrada
    disp('Solução encontrada pelo Simulated Annealing:');
    disp(['X: ', num2str(SolucaoAtual(1))]);
    disp(['Y: ', num2str(SolucaoAtual(2))]);
    disp(['Valor da Função de Rosenbrock: ', num2str(CustoAtual)]);
end
