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
        solucoes(iter) = CustoAtual;
        solucoesvizinhas(iter) = ValorSolucaoVizinha;
        
        % Reduz a temperatura
        temperature = temperature * TaxaDeResfriamento;
    end
    
    % Exibe a solução encontrada
    disp('Solução encontrada pelo Simulated Annealing:');
    disp(['X: ', num2str(SolucaoAtual(1))]);
    disp(['Y: ', num2str(SolucaoAtual(2))]);
    loglog(solucoes,'b','linewidth',2.5)
    hold on
    loglog(solucoesvizinhas,'r')
    grid on
    grid minor
    xlabel('Iterações')
    title('Evolucao da solucao')
    legend('solucão principal','solução vizinha')
    axis([1 Iteracoes 10^(-5) 10^6])
end
