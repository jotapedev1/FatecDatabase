CREATE DATABASE TechData;
\c TechData --específico postgreSQL

--2. PARTE 1 - CRIAÇÃO DA ESTRUTURA DDL
CREATE TABLE Departamento(
    CodDepto INT PRIMARY KEY,
    NomeDepto VARCHAR(50) NOT NULL
);

CREATE TABLE Funcionario(
    Matricula INT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    Cargo VARCHAR(30) NOT NULL,
    Salario DECIMAL(10,2) CHECK(Salario > 1200),
    CodDepto INT REFERENCES Departamento (CodDepto) --específico postgreSQL

);
--3. PARTE 2 - INSERÇÃO E MANIPULAÇÃO DE DADOS DML

--1. Insira três departamentos e cinco funcionários.
INSERT INTO Departamento(CodDepto, NomeDepto) 
VALUES
    (101, 'TI'),
    (102, 'Financeiro'),
    (103, 'Almoxarifado');

INSERT INTO Funcionario(Matricula, Nome, Cargo, Salario, CodDepto)
VALUES
(401, 'Isabela Silva', 'Diretora de Finanças', 5200, 102),
(402, 'Valdelice Silva', 'Técnica de Finanças SR', 5000, 102),
(403, 'Claudemir Aquino', 'Estágiario', 2000, 103), --SERÁ EXCLUÍDO
(404, 'Silmara Andréia', 'Almoxarife JR', 4200, 103),
(405, 'João Santos', 'Desenvolvedor de Sistemas SR', 15000, 101);

--2. Atualize o salário de um funcionário específico.
UPDATE Funcionario
SET Salario = 20000
WHERE Matricula = 401;

--3. Exclua um funcionário com cargo “Estagiário”.
DELETE FROM Funcionario WHERE Cargo = 'Estagiario';
--4. Liste os funcionários com salário superior a 3000.
SELECT Nome, Salario
FROM Funcionario
WHERE Salario > 3000;
--5. Liste os nomes dos departamentos e seus respectivos funcionários, usando JOIN.
SELECT d.NomeDepto, f.Nome
FROM Departamento d
JOIN Funcionario f
ON d.CodDepto = f.CodDepto;

--4. Parte 3 – Álgebra Relacional e SQL
--Obter todos os funcionários do departamento de TI
SELECT Nome, Cargo
FROM Funcionario F
JOIN Departamento D
ON F.CodDepto = D.CodDepto
WHERE D.NomeDepto='TI';
--Listar nomes e cargos de todos os funcionários (projeção)
SELECT Nome, Cargo FROM Funcionario;
--Encontrar funcionários que não pertencem ao depto “Financeiro”
SELECT f.Nome, d.NomeDepto
FROM Funcionario f
JOIN Departamento d
ON f.CodDepto = d.CodDepto
WHERE d.NomeDepto <> 'Financeiro';

--5. Parte 4 – Controle e Transações (DCL e TCL)
--1. Crie um usuário chamado analista com permissão apenas para consultar dados da tabela Funcionario.
INSERT INTO Funcionario (Matricula, Nome, Cargo, Salario, CodDepto)
VALUES
(406, 'Analista', 'Analista de Banco de Dados', 7000, 101);

CREATE USER analista WITH PASSWORD '123';--específico postgreSQL

GRANT SELECT ON TABLE funcionario TO analista;--específico postgreSQL

--2. Retire o privilégio de exclusão desse usuário.
REVOKE DELETE ON TABLE Funcionario FROM analista;--específico postgreSQL

--3. Faça uma simulação de transação:
--Inicie uma transação
BEGIN TRANSACTION;
--Aumente o salário de todos os funcionários em 10%.
UPDATE Funcionario 
SET Salario = Salario * 1.10;
--Salve (COMMIT) a transação.
SELECT Nome, Salario FROM Funcionario;
COMMIT;
--Depois, faça outra atualização e desfaça (ROLLBACK).
BEGIN TRANSACTION;
INSERT INTO Departamento (CodDepto, NomeDepto)
VALUES (104, 'Inteligência Artificial');

SELECT CodDepto, NomeDepto FROM Departamento WHERE CodDepto = 104;
-- Desfaz a alteração
ROLLBACK;

--QUESTÕES TEÓRICAS
/*
1. Explique, com suas palavras, a diferença entre DDL e DML.
DDL (Data Definition Language) se refere a criação da estrutura do banco de dados, criando tabelas, suas colunas e seus tipos de dados que serão aceitos. Já DML (Data Manipulation Language) se refere a manipulação de dados nas tabelas já existentes. Isto inclui a inserção, atualização, deleção de dados, entre outras formas de manipulação.

2. Qual a função da chave primária e da chave estrangeira?
A chave primária tem como função identificar de maneira única cada item em uma tabela. A chave estrangeira é a existência de uma chave primária de outra tabela em uma tabela. Ela serve para criar uma relação entre tabelas.

3. Cite dois exemplos de restrições de integridade que podem ser definidas em uma tabela.
Em um banco de dados de uma empresa, dependendo de suas políticas, pode existir uma restrição de idade entre seus funcionários, onde é obrigatório a maioridade: Idade INT CHECK(Idade >= 18);
Na mesma empresa, pode ter uma obrigatoriedade de um salário mínimo há todos os funcionários: Salario DECIMAL(10,2) CHECK(Salario >= 1500);

4. Por que a Álgebra Relacional é considerada a base da SQL?
Porque a álgebra relacional permite o relacionamento entre tabelas. Ela define operações sobre conjuntos de dados (como seleção, projeção e junção).
O conceito de álgebra é aplicado em comandos essenciais do SQL como por exemplo o SELECT baseado em condições WHERE, ou operações de conjunto, que possibilita a união entre duas ou mais tabelas.

5. O que acontece se utilizarmos ROLLBACK após um COMMIT?
O comando COMMIT grava de forma permanente as alterações no banco de dados e encerra a transação. Apesar do comando ROLLBACK ter a função de desfazer as alterações realizadas dentro de uma transação, após um COMMIT não é mais possível desfazer as alterações.
*/
