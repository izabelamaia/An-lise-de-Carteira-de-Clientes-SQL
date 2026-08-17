Análise de Carteira de Clientes SQL

--- Sobre o projeto ---
Projeto de análise de uma base de clientes fictícia utilizando SQL. Foram aplicados conceitos de criação de tabelas, inserção de dados, filtros, ordenação, agregações, classificação por dias de atraso e análise de acordos por funcionário.

--- Objetivo ---
O objetivo deste projeto é praticar SQL por meio da criação e análise de uma base de dados fictícia de clientes de uma empresa de serviços financeiros.
A análise busca identificar informações como valores de acordos, honorários, dias de atraso e distribuição de clientes por funcionário.

--- Estrutura da base ---
A tabela utilizada no projeto contém as seguintes informações:
| Campo | Descrição |
| 'Identificador' | Identificador único do registro |
| 'Carteira' | Carteira responsável pelo cliente |
| 'Nome' | Nome do cliente |
| 'Acordo' | Valor do acordo |
| 'Honorario' | Valor do honorário |
| 'Desconto_maximo' | Percentual máximo de desconto |
| 'Id_funcionario' | Identificador do funcionário responsável |
| 'Dias_atraso' | Quantidade de dias em atraso |
| 'Data_inclusao' | Data de inclusão do cliente |

--- Análises realizadas ---
Durante o projeto foram desenvolvidas consultas para:
- Identificar clientes com acordos acima de R$ 500;
- Calcular o total de acordos;
- Calcular o total de honorários;
- Classificar clientes de acordo com os dias de atraso;
- Identificar a quantidade de clientes por classificação de atraso;
- Encontrar o maior acordo;
- Calcular o menor, maior e valor médio dos acordos;
- Calcular a quantidade de clientes por funcionário;
- Calcular o total de acordos por funcionário.

--- Principais resultados ---
# Valores dos acordos
- **Total de acordos:** R$ 13.796,39
- **Total de honorários:** R$ 2.913,67
- **Maior acordo:** R$ 5.000,28
- **Menor acordo:** R$ 40,67
- **Média dos acordos:** R$ 551,86

# Classificação por atraso
| Classificação | Quantidade |
|---|---:|
| Atraso baixo | 11 |
| Atraso alto | 8 |
| Atraso médio | 5 |
| Em dia | 1 |

# Destaques por funcionário
O funcionário `1099` apresentou o maior valor total de acordos, com **R$ 5.000,28**.
Os funcionários `5099` e `2097` apresentaram a maior quantidade de clientes, com **5 clientes cada**.

--- Conceitos SQL praticados ---
- `CREATE TABLE`
- `INSERT INTO`
- `SELECT`
- `WHERE`
- `ORDER BY`
- `GROUP BY`
- `CASE`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MAX()`
- `MIN()`
- `ROUND()`
- `LIMIT`
- `AUTO_INCREMENT`
- Chave primária (`PRIMARY KEY`)

--- Tecnologias ---
- MySQL
- SQL
- Git
- GitHub

--- Arquivos ---
'database.sql'
Criação da tabela e inserção dos dados fictícios.
'consultas.sql'
Consultas utilizadas para realizar as análises da base.

---  Observação ---
Este projeto utiliza dados fictícios e foi desenvolvido para fins de estudo, prática de SQL e construção de portfólio.

--- Próximos passos ---
Como evolução do projeto, podem ser adicionadas novas tabelas e relacionamentos, utilização de `JOIN`, `FOREIGN KEY`, subqueries, views e posteriormente uma visualização dos dados em uma ferramenta de BI.
