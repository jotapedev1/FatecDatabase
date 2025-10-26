# 🧠 Repositório de Atividades – Banco de Dados | FATEC Osasco

Bem-vindo ao meu repositório de **atividades e projetos desenvolvidos durante a disciplina de Banco de Dados** no curso de **Desenvolvimento de Software Multiplataforma (DSM)** da **FATEC Osasco**.  

Aqui estão reunidos exercícios práticos, estudos e pequenos projetos realizados ao longo do semestre, envolvendo desde **conceitos fundamentais de SQL** até **transações e controle de permissões**.

---

## 📚 Conteúdo do Repositório

Este repositório contém diversos scripts e mini projetos em SQL, organizados por tema ou atividade.

### 📁 Exemplos de projetos incluídos:
- **TechData** – Criação completa de banco de dados com DDL, DML, DCL e TCL  
- **Biblioteca FATEC** – Modelagem de um sistema de empréstimos  
- **Loja de Eletrônicos** – Tabelas com relacionamentos e consultas complexas  
- **Controle de Funcionários** – Exercícios de manipulação de dados e restrições de integridade  
- **Consultas Relacionais** – Prática de álgebra relacional e operações com JOIN, UNION, etc.  

---

## 🧩 Conceitos Praticados

Durante o desenvolvimento das atividades, foram abordados:

### 🔹 DDL – *Data Definition Language*
Criação e modificação da estrutura do banco:
CREATE DATABASE exemplo;
CREATE TABLE cliente (...);
ALTER TABLE produto ADD COLUMN estoque INT;

### 🔹 DML – Data Manipulation Language
Manipulação dos dados:
INSERT INTO cliente VALUES (...);
UPDATE produto SET preco = preco * 1.1;
DELETE FROM funcionario WHERE cargo = 'Estagiário';

### 🔹 DCL / TCL – Controle de Acesso e Transações
Controle de permissões e consistência de dados:
GRANT SELECT ON TABLE cliente TO analista;
BEGIN TRANSACTION;
ROLLBACK;
COMMIT;

## 🧮 Conceitos Teóricos Estudados

- Diferença entre DDL, DML, DCL e TCL
- Chaves primárias e estrangeiras
- Restrições de integridade (CHECK, UNIQUE, NOT NULL)
- Álgebra relacional como base da linguagem SQL
- Transações e o uso de COMMIT e ROLLBACK
- Controle de usuários e privilégios no PostgreSQL


