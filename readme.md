📝 Relatório discente de acompanhamento

## Informações do Curso

- **Curso:** Estácio Desenvolvimento Full Stack
- **Universidade:** Estácio de Sá - Campus São José dos Pinhais
- **Período:** 3º
- **Turma:** 9001
- **Tutor:** Alessandro Dos Santos Calin
- **Matéria:** Vamos Manter as Informações? (RPG0015)

## Informações do Aluno

- **Nome:** Dilnae Rennan Souza dos Santos
- **Matrícula:** 202302631631

## Sobre o Projeto
Este projeto, chamado de **Desenvolvimento de um Sistema de Compra e Venda com Utilização de Banco de Dados MSSQL**, faz parte da **Missão Prática Nível 2 Mundo 3** do programa de formação Full Stack da Estácio. O objetivo central é criar um sistema para gerenciar transações de compra e venda de produtos, utilizando um banco de dados MSSQL. O projeto inclui etapas como modelagem de dados, criação de tabelas e seus relacionamentos, inserção de informações e execução de consultas para extrair dados relevantes.

### Características Principais
- **Modelagem de Banco de Dados Relacional:**.
- **Criação e Gerenciamento do Banco de Dados:**
- **Inserção de Dados:**
- **Consultas SQL Complexas:** 

### Aprendizados

O projeto permitiu explorar os conceitos de modelagem de banco de dados relacional, a sintaxe SQL para criação e manipulação de dados (DDL e DML), e vivenciar a experiência prática de implementar um sistema com banco de dados. O trabalho também aborda a importância de chaves estrangeiras, a diferença entre sequences e identity, e a utilização de operadores da álgebra e cálculo relacional para construir consultas eficientes.


## Análise e Conclusão:

### Diferenças entre o uso de Sequence e Identity:
O uso de ***Sequence*** e ***Identity*** são duas maneiras distintas de gerar valores únicos para colunas em um banco de dados SQL.

- **Sequence**: Uma sequência é um objeto de banco de dados que gera uma série de números de acordo com uma especificação definida pelo usuário. Pode ser utilizado em diferentes colunas em diferentes tabelas e permite maior flexibilidade no controle dos valores gerados.
  
- **Identity**: A propriedade de identidade é uma característica específica de algumas bases de dados, como o SQL Server (MSSQL). Ela é aplicada a uma coluna e permite que o banco de dados gere automaticamente valores únicos para essa coluna conforme novas linhas são inseridas na tabela. A principal diferença em relação à Sequence é que a identidade está diretamente vinculada a uma coluna específica, enquanto uma Sequence pode ser usada em várias colunas ou mesmo em várias tabelas.
  
### Importância das Chaves Estrangeiras para a Consistência do Banco:
As ***chaves estrangeiras*** são essenciais para manter a integridade referencial e a consistência dos dados em um banco de dados relacional. Elas estabelecem uma relação entre duas tabelas, onde a chave estrangeira na tabela filha faz referência à chave primária correspondente na tabela pai.

Quando uma chave estrangeira é definida, ela impõe restrições aos dados na tabela filha, garantindo que apenas valores presentes na tabela pai possam ser inseridos na tabela filha. Isso previne a ocorrência de dados órfãos (registros na tabela filha sem uma correspondência na tabela pai) e mantém a integridade dos dados ao longo do tempo.

### Operadores SQL pertencentes à Álgebra Relacional e Cálculo Relacional:
- **Álgebra Relacional**: Os operadores da álgebra relacional são aqueles que manipulam relações (tabelas) para produzir um resultado desejado. Alguns dos operadores comuns incluem: Seleção (σ), Projeção (π), União (∪), Interseção (∩), Diferença (-), Produto Cartesiano (×), e Renomeação (ρ).
  
- **Cálculo Relacional**: O cálculo relacional, por outro lado, utiliza uma abordagem baseada em lógica de predicados para extrair dados. Ele inclui dois tipos principais: o cálculo relacional baseado em Tuplas e o cálculo relacional baseado em Domínios. Os operadores do cálculo relacional incluem: Seleção (σ), Projeção (π), Junção (⨝), e Divisão (÷).
  
### Agrupamento em Consultas e Requisito Obrigatório:
O ***agrupamento em consultas*** é utilizado para agrupar linhas de dados com base em valores comuns em uma ou mais colunas. Isso permite realizar cálculos agregados, como soma, média, contagem, etc., para cada grupo de dados.

O requisito obrigatório para usar a cláusula **GROUP BY** em consultas é que todas as colunas selecionadas na consulta devem ser agregadas (por exemplo, através de funções como SUM(), AVG(), COUNT(), etc.) ou incluídas na cláusula GROUP BY. Isso garante que cada linha do resultado final da consulta esteja claramente associada a um grupo específico de dados, evitando ambiguidades e garantindo a precisão dos resultados.

### Data de Desenvolvimento

- **Data:** 24/04/2024
