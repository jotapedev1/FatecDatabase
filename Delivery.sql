CREATE DATABASE FastDeliveryDB;
USE FastDeliveryDB;

CREATE TABLE pagamento(
    INT id_Pagamento PRIMARY KEY,
    VARCHAR tipo NOT NULL,
    VARCHAR forma NOT NULL,
    TIMESTAMP dataPagamento NOT NULL,
    FLOAT valor NOT NULL
)

CREATE TABLE veiculo(
    INT id_veiculo PRIMARY KEY,
    VARCHAR tipo NOT NULL,
    VARCHAR placa NOT NULL
)

CREATE TABLE motorista(
    INT id_motorista PRIMARY KEY,
    VARCHAR email,
    VARCHAR telefone,
    VARCHAR cnh NOT NULL,
    VARCHAR nome NOT NULL,
    VARCHAR cpf NOT NULL,

)

CREATE TABLE entrega(
    INT id_entrega PRIMARY KEY,
    TIMESTAMP previsao,
    TIMESTAMP dataSolicitacao NOT NULL,
    FLOAT frete NOT NULL,
    BOOLEAN statusEntrega
)

CREATE TABLE encomenda(
    INT id_encomenda PRIMARY KEY,
    FLOAT valor_declarado,
    FLOAT dimensoes,
    FLOAT peso,
    VARCHAR descricao
    INT cliente_entrega,
    CONSTRAINT FOREIGN KEY
)

CREATE TABLE clientePF(
    INT id_cliente PRIMARY KEY,
    VARCHAR nome NOT NULL,
    VARCHAR email NOT NULL,
    VARCHAR telefone NOT NULL,
    VARCHAR endereco NOT NULL,
    VARCHAR cpf NOT NULL,
)

CREATE TABLE clientePJ(
    INT id_cliente PRIMARY KEY,
    VARCHAR nome NOT NULL,
    VARCHAR email NOT NULL,
    VARCHAR telefone NOT NULL,
    VARCHAR endereco NOT NULL,
    VARCHAR cnpj NOT NULL,
)

CREATE TABLE clientes(
    INT id_cliente_pf,
    CONSTRAINT clientePF FOREIGN KEY (id_cliente_pf) REFERENCES clientePF (id_cliente),
    INT id_cliente_pj,
    CONSTRAINT clientePF FOREIGN KEY (id_cliente_pjf) REFERENCES clientePJ (id_cliente)
)
