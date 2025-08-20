    DROP DATABASE [IF EXISTS] FastDeliveryDB;
    CREATE DATABASE FastDeliveryDB;
    USE FastDeliveryDB;

    CREATE TABLE pagamento(
        id_Pagamento INT PRIMARY KEY,
        tipo VARCHAR(30) NOT NULL,
        forma VARCHAR(30) NOT NULL,
        dataPagamento TIMESTAMP NOT NULL,
        valor FLOAT NOT NULL
    );

    CREATE TABLE veiculo(
        id_veiculo INT PRIMARY KEY,
        tipo VARCHAR(20) NOT NULL,
        placa VARCHAR(7) NOT NULL
    );

    CREATE TABLE motorista(
        id_motorista INT PRIMARY KEY,
        email VARCHAR(100),
        telefone VARCHAR(9),
        cnh VARCHAR(9) NOT NULL,
        nome VARCHAR(100) NOT NULL,
        cpf VARCHAR(11) NOT NULL
    );

    CREATE TABLE entrega (
        id_entrega INT PRIMARY KEY,
        previsao TIMESTAMP,
        dataSolicitacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        frete FLOAT NOT NULL,
        status VARCHAR(20) NOT NULL CHECK (status IN ('Aguardando','EmTransporte','Concluida','Cancelada'))
    );

    CREATE TABLE clientePF(
        id_cliente INT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL,
        telefone VARCHAR(9) NOT NULL,
        endereco VARCHAR(100) NOT NULL,
        cpf VARCHAR(11) NOT NULL
    );

    CREATE TABLE clientePJ(
        id_cliente INT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL,
        telefone VARCHAR(9) NOT NULL,
        endereco VARCHAR(100) NOT NULL,
        cnpj VARCHAR(14) NOT NULL
    );

    CREATE TABLE encomenda(
        id_encomenda INT PRIMARY KEY,
        valor_declarado FLOAT,
        dimensoes FLOAT,
        peso FLOAT,
        descricao VARCHAR(200),
        cliente_entrega INT,
        FOREIGN KEY (cliente_entrega) REFERENCES clientePF (id_cliente)
    );

    CREATE TABLE clientes (
        id_cliente_pf INT,
        id_cliente_pj INT,
        CONSTRAINT fk_cliente_pf FOREIGN KEY (id_cliente_pf) REFERENCES clientePF (id_cliente),
        CONSTRAINT fk_cliente_pj FOREIGN KEY (id_cliente_pj) REFERENCES clientePJ (id_cliente)
    );
