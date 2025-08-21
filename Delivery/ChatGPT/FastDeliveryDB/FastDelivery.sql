DROP DATABASE IF EXISTS teste;
CREATE DATABASE teste;
USE teste;

-- =======================
-- TABELA CLIENTE
-- =======================
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),               -- pessoa física
    razao_social VARCHAR(150),       -- pessoa jurídica
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

-- =======================
-- ENDEREÇOS DO CLIENTE
-- =======================
CREATE TABLE endereco (
    id_endereco INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    logradouro VARCHAR(150) NOT NULL,
    numero VARCHAR(10),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    estado CHAR(2),
    cep VARCHAR(8),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

-- =======================
-- VEÍCULO
-- =======================
CREATE TABLE veiculo(
    id_veiculo INT PRIMARY KEY,
    tipo VARCHAR(20) NOT NULL,
    placa VARCHAR(7) NOT NULL
);

-- =======================
-- MOTORISTA
-- =======================
CREATE TABLE motorista(
    id_motorista INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NUL,
    cnh VARCHAR(20) NOT NULL,
    cpf VARCHAR(11) NOT NULL
);

-- =======================
-- ENTREGA
-- =======================
CREATE TABLE entrega (
    id_entrega INT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_motorista INT NOT NULL,
    id_veiculo INT NOT NULL,
    data_prevista TIMESTAMP,
    data_solicitacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    valor_frete FLOAT NOT NULL,
    status VARCHAR(20) NOT NULL CHECK (status IN ('Aguardando','EmTransporte','Concluida','Cancelada')),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_motorista) REFERENCES motorista(id_motorista),
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo)
);

-- =======================
-- PAGAMENTO
-- =======================
CREATE TABLE pagamento(
    id_pagamento INT PRIMARY KEY,
    id_entrega INT NOT NULL,
    tipo VARCHAR(30) NOT NULL,
    forma VARCHAR(30) NOT NULL,
    data_pagamento TIMESTAMP NOT NULL,
    valor_pago FLOAT NOT NULL,
    FOREIGN KEY (id_entrega) REFERENCES entrega(id_entrega)
);

-- =======================
-- ENCOMENDA
-- =======================
CREATE TABLE encomenda(
    id_encomenda INT PRIMARY KEY,
    id_entrega INT NOT NULL,
    valor_declarado INT NOT NULL,
    descricao VARCHAR(200),
    peso_kg FLOAT,
    altura_cm FLOAT,
    largura_cm FLOAT,
    comprimento_cm FLOAT,
    FOREIGN KEY (id_entrega) REFERENCES entrega(id_entrega)
);

-- =======================
-- ROTEIRO PARADA
-- =======================
CREATE TABLE roteiro_parada(
    id_parada INT PRIMARY KEY,
    id_entrega INT NOT NULL,
    ordem INT NOT NULL,
    endereco_destino VARCHAR(200) NOT NULL,
    hora_prevista TIMESTAMP,
    hora_real TIMESTAMP,
    FOREIGN KEY (id_entrega) REFERENCES entrega(id_entrega)
);
