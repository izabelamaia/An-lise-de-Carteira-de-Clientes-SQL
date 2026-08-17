-- =========================================
-- ANÁLISE DE CARTEIRA DE CLIENTES
-- =========================================


-- =========================================
-- 1. VALOR DOS ACORDOS
-- =========================================

-- Clientes com acordos acima de R$ 500
SELECT Nome, Acordo
FROM teste_1
WHERE Acordo > 500
ORDER BY Acordo DESC;


-- Total de acordos e honorários
SELECT
    SUM(Acordo) AS Total_Acordos,
    SUM(Honorario) AS Total_Honorarios
FROM teste_1;


-- =========================================
-- 2. DIAS DE ATRASO
-- =========================================

-- Classificação dos clientes por dias de atraso
SELECT
    Nome,
    Dias_atraso,
    CASE
        WHEN Dias_atraso = 0 THEN 'Em dia'
        WHEN Dias_atraso <= 30 THEN 'Atraso baixo'
        WHEN Dias_atraso <= 60 THEN 'Atraso médio'
        ELSE 'Atraso alto'
    END AS Classificacao
FROM teste_1;


-- Quantidade de clientes por classificação
SELECT
    CASE
        WHEN Dias_atraso = 0 THEN 'Em dia'
        WHEN Dias_atraso <= 30 THEN 'Atraso baixo'
        WHEN Dias_atraso <= 60 THEN 'Atraso médio'
        ELSE 'Atraso alto'
    END AS Classificacao,
    COUNT(*) AS Quantidade
FROM teste_1
GROUP BY Classificacao
ORDER BY Quantidade DESC;


-- =========================================
-- 3. ANÁLISE DOS ACORDOS
-- =========================================

-- Maior acordo
SELECT *
FROM teste_1
ORDER BY Acordo DESC
LIMIT 1;


-- Média dos acordos
SELECT
    ROUND(AVG(Acordo), 2) AS Media_Acordos
FROM teste_1;


-- Indicadores dos acordos
SELECT
    MAX(Acordo) AS Maior_Acordo,
    MIN(Acordo) AS Menor_Acordo,
    ROUND(AVG(Acordo), 2) AS Media_Acordos,
    SUM(Acordo) AS Total_Acordos
FROM teste_1;


-- =========================================
-- 4. ANÁLISE POR FUNCIONÁRIO
-- =========================================

-- Quantidade de clientes por funcionário
SELECT
    Id_funcionario,
    COUNT(*) AS Quantidade_clientes
FROM teste_1
GROUP BY Id_funcionario
ORDER BY Quantidade_clientes DESC;


-- Total de acordos por funcionário
SELECT
    Id_funcionario,
    SUM(Acordo) AS Total_Acordos
FROM teste_1
GROUP BY Id_funcionario
ORDER BY Total_Acordos DESC;
