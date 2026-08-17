-- =========================================================
-- PROJETO SQL - CLIENTES E ACORDOS
-- =========================================================


-- =========================================================
-- BASE
-- =========================================================

CREATE TABLE teste_1 (
    Identificador INT AUTO_INCREMENT,
    Carteira VARCHAR(40),
    Nome VARCHAR(50),
    Acordo DECIMAL(10,2),
    Honorario DECIMAL(10,2),
    Desconto_maximo VARCHAR(5),
    Id_funcionario INT,
    Dias_atraso INT,
    Data_inclusao DATE,
    PRIMARY KEY (Identificador)
);


-- =========================================================
-- CLIENTES
-- =========================================================

INSERT INTO teste_1
(Identificador, Carteira, Nome, Acordo, Honorario, Desconto_maximo, Id_funcionario, Dias_atraso, Data_inclusao)
VALUES
(123, 'BULGARELLI SERVIÇOS FINANCEIROS', 'ALICE', 1000.051, 504.74, '100%', 2097, 00, '2026-12-12'),
(234, 'BULGARELLI SERVIÇOS FINANCEIROS', 'BRENO', 40.938, 6.746, '10%', 1097, 11, '2026-01-21'),
(345, 'BULGARELLI SERVIÇOS FINANCEIROS', 'CAROLINE', 200.037, 120.46, '20%', 5099, 22, '2026-02-23'),
(456, 'BULGARELLI SERVIÇOS FINANCEIROS', 'DANIEL', 40.67, 6.00, '30%', 4097, 33, '2026-03-22'),
(567, 'BULGARELLI SERVIÇOS FINANCEIROS', 'ELISA', 50.037, 30.046, '40%', 5097, 44, '2026-04-24'),
(678, 'BULGARELLI SERVIÇOS FINANCEIROS', 'FERNANDO', 150.508, 16.008, '50%', 2097, 55, '2026-05-25'),
(789, 'BULGARELLI SERVIÇOS FINANCEIROS', 'GIULA', 160.02, 38.022, '60%', 1097, 66, '2026-06-26'),
(890, 'BULGARELLI SERVIÇOS FINANCEIROS', 'HEITOR', 610.40, 51.04, '70%', 8097, 77, '2026-02-28'),
(901, 'BULGARELLI SERVIÇOS FINANCEIROS', 'IZABELA LINDA', 500.61, 45.70, '40%', 5099, 88, '2026-04-24'),
(012, 'BULGARELLI SERVIÇOS FINANCEIROS', 'JEFERSON', 401.60, 44.50, '80%', 9097, 99, '2026-01-29'),
(112, 'BULGARELLI SERVIÇOS FINANCEIROS', 'KIMILY', 610.71, 57.10, '90%', 2098, 01, '2025-01-11'),
(122, 'BULGARELLI SERVIÇOS FINANCEIROS', 'LUIZ', 200.16, 43.46, '11%', 2097, 10, '2025-02-12'),
(223, 'BULGARELLI SERVIÇOS FINANCEIROS', 'MARIA', 420.87, 24.82, '22%', 1097, 20, '2025-03-13'),
(233, 'BULGARELLI SERVIÇOS FINANCEIROS', 'NATAN', 260.48, 72.82, '33%', 5098, 30, '2025-04-14'),
(344, 'BULGARELLI SERVIÇOS FINANCEIROS', 'PAULO', 620.91, 62.33, '55%', 5099, 50, '2025-06-16'),
(709, 'BULGARELLI SERVIÇOS FINANCEIROS', 'QUERNIA', 93.34, 2.77, '07%', 1098, 60, '2025-07-17'),
(109, 'BULGARELLI SERVIÇOS FINANCEIROS', 'RAMON', 400.87, 53.97, '77%', 0098, 70, '2025-08-18'),
(209, 'BULGARELLI SERVIÇOS FINANCEIROS', 'STELLA', 240.29, 100.45, '88%', 2097, 80, '2025-09-19'),
(309, 'BULGARELLI SERVIÇOS FINANCEIROS', 'TAUAN', 640.28, 300.77, '99%', 1097, 90, '2025-10-20'),
(409, 'BULGARELLI SERVIÇOS FINANCEIROS', 'URSULA', 84.53, 50.41, '01%', 5099, 100, '2025-11-21'),
(509, 'BULGARELLI SERVIÇOS FINANCEIROS', 'VICTOR', 5000.28, 702.55, '02%', 1099, 12, '2025-12-12'),
(609, 'BULGARELLI SERVIÇOS FINANCEIROS', 'WINY', 250.23, 21.82, '03%', 2099, 13, '2026-04-10'),
(809, 'BULGARELLI SERVIÇOS FINANCEIROS', 'XARNEY', 456.28, 25.02, '04%', 3099, 14, '2026-07-11'),
(909, 'BULGARELLI SERVIÇOS FINANCEIROS', 'YASMIN', 507.88, 75.55, '05%', 2097, 15, '2026-08-16'),
(009, 'BULGARELLI SERVIÇOS FINANCEIROS', 'ZUKO', 854.40, 456.56, '07%', 5099, 16, '2024-09-14');


-- =========================================================
-- CONSULTA 1 - CLIENTES COM ACORDO ACIMA DE R$ 500
-- =========================================================

SELECT
    Nome,
    Acordo
FROM teste_1
WHERE Acordo > 500
ORDER BY Acordo DESC;


-- =========================================================
-- CONSULTA 2 - TOTAL DE ACORDOS E HONORÁRIOS
-- =========================================================

SELECT
    SUM(Acordo) AS Total_Acordos,
    SUM(Honorario) AS Total_Honorarios
FROM teste_1;


-- =========================================================
-- CONSULTA 3 - CLASSIFICAÇÃO POR DIAS DE ATRASO
-- =========================================================

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


-- =========================================================
-- CONSULTA 4 - QUANTIDADE DE CLIENTES POR CLASSIFICAÇÃO
-- =========================================================

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


-- =========================================================
-- CONSULTA 5 - CLIENTE COM MAIOR ACORDO
-- =========================================================

SELECT *
FROM teste_1
ORDER BY Acordo DESC
LIMIT 1;


-- =========================================================
-- CONSULTA 6 - RESUMO DOS ACORDOS
-- =========================================================

SELECT
    MAX(Acordo) AS Maior_Acordo,
    MIN(Acordo) AS Menor_Acordo,
    ROUND(AVG(Acordo), 2) AS Media_Acordos,
    SUM(Acordo) AS Total_Acordos
FROM teste_1;


-- =========================================================
-- CONSULTA 7 - QUANTIDADE DE CLIENTES POR FUNCIONÁRIO
-- =========================================================

SELECT
    Id_funcionario,
    COUNT(*) AS Quantidade_clientes
FROM teste_1
GROUP BY Id_funcionario
ORDER BY Quantidade_clientes DESC;


-- =========================================================
-- CONSULTA 8 - TOTAL DE ACORDOS POR FUNCIONÁRIO
-- =========================================================

SELECT
    Id_funcionario,
    SUM(Acordo) AS Total_Acordos
FROM teste_1
GROUP BY Id_funcionario
ORDER BY Total_Acordos DESC;


-- =========================================================
-- CONSULTA 9 - CLIENTES COM ALTO ATRASO E ACORDO ACIMA DE R$ 500
-- =========================================================

SELECT
    Nome,
    Acordo,
    Dias_atraso
FROM teste_1
WHERE Dias_atraso > 60
  AND Acordo > 500
ORDER BY Dias_atraso DESC;


-- =========================================================
-- CONSULTA 10 - CLIENTES COM MAIS DE 60 DIAS DE ATRASO
-- =========================================================

SELECT
    Nome,
    Dias_atraso
FROM teste_1
WHERE Dias_atraso > 60
ORDER BY Dias_atraso DESC;


-- =========================================================
-- CONSULTA 11 - CLIENTES EM ATRASO BAIXO
-- =========================================================

SELECT
    Nome,
    Dias_atraso
FROM teste_1
WHERE Dias_atraso BETWEEN 1 AND 30
ORDER BY Dias_atraso DESC;


-- =========================================================
-- CONSULTA 12 - FUNCIONÁRIOS COM MAIS DE UM CLIENTE
-- =========================================================

SELECT
    Id_funcionario,
    COUNT(*) AS Quantidade_clientes
FROM teste_1
GROUP BY Id_funcionario
HAVING COUNT(*) > 1
ORDER BY Quantidade_clientes DESC;
