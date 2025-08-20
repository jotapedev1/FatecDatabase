CREATE DATABASE Hotel;
USE Hotel;

CREATE TABLE hospedes (
    id_hospede INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    cpf BIGINT NOT NULL,
    endereco VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone BIGINT NOT NULL
);

CREATE TABLE quartos (
    id_quarto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    numero_quarto INT,
    tipo_quarto VARCHAR(20),
    status_quarto VARCHAR(10),
    preco_diaria FLOAT,
    capacidade INT
);

CREATE TABLE reserva (
    id_reserva INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    checkin DATE NOT NULL,
    checkout DATE NOT NULL,
    status_reserva VARCHAR(15),
    id_hospede INT NOT NULL,
    id_quarto INT NOT NULL,
    CONSTRAINT reserva_hospede FOREIGN KEY (id_hospede) REFERENCES hospedes(id_hospede),
    CONSTRAINT quarto_hospede FOREIGN KEY (id_quarto) REFERENCES quartos(id_quarto)
);

CREATE TABLE servicos_adicionais (
    id_servico INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_servico DATE NOT NULL,
    valor_servico FLOAT,
    id_reserva INT NOT NULL,
    CONSTRAINT servico_reserva FOREIGN KEY (id_reserva) REFERENCES reserva(id_reserva)
);
CREATE TABLE Pagamentos (
    Id_Pagamento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Id_Hospede INT NOT NULL,
    Id_Reserva INT NOT NULL,
    Valor DECIMAL(8, 2) NOT NULL,
    Status VARCHAR(15) NOT NULL,
    Forma_Pagamento VARCHAR(15) NOT NULL,
    Data_Pagamento DATE NOT NULL,
    Multa DECIMAL(8, 2) NOT NULL,
    CONSTRAINT pagamento_hospede FOREIGN KEY (Id_Hospede) REFERENCES hospedes(id_hospede),
    CONSTRAINT pagamento_reserva FOREIGN KEY (Id_Reserva) REFERENCES reserva(id_reserva)
);

CREATE TABLE Funcionarios (
    Id_Funcionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(40) NOT NULL,
    Cpf CHAR(11) NOT NULL UNIQUE,
    Cargo VARCHAR(15) NOT NULL,
    Email VARCHAR(30) NULL,
    Telefone CHAR(12) NOT NULL UNIQUE,
    Endereco VARCHAR(50) NULL
);

-- Inserções

INSERT INTO hospedes (cpf, endereco, email, nome, data_nascimento, telefone)
VALUES 
(98765432100, 'Rua B, 456', 'joao.silva@gmail.com', 'João Silva', '1990-05-12', 11987654321),
(45678912300, 'Av. Central, 789', 'ana.moura@hotmail.com', 'Ana Moura', '1985-09-23', 11999887766);

INSERT INTO quartos (numero_quarto, tipo_quarto, status_quarto, preco_diaria, capacidade)
VALUES 
(305, 'Solteiro', 'Livre', 150.00, 1),
(408, 'Casal', 'Reservado', 250.50, 2),
(512, 'Família', 'Livre', 400.75, 5);

INSERT INTO reserva (checkin, checkout, status_reserva, id_hospede, id_quarto)
VALUES
('2025-03-15', '2025-03-20', 'Confirmada', 1, 2),
('2025-04-10', '2025-04-15', 'Cancelada', 2, 3);


INSERT INTO servicos_adicionais (data_servico, valor_servico, id_reserva)
VALUES
('2025-03-16', 50.00, 1),
('2025-04-11', 75.25, 2);


INSERT INTO Pagamentos (Id_Hospede, Id_Reserva, Valor, Status, Forma_Pagamento, Data_Pagamento, Multa)
VALUES 
(1, 1, 2992.50, 'Pago', 'Cartão', '2025-03-20', 0.00),
(2, 2, 1250.00, 'Em aberto', 'Boleto', '2025-04-20', 50.00);


INSERT INTO Funcionarios (Nome, Cpf, Cargo, Email, Telefone, Endereco)
VALUES 
('Carlos Henrique', '12345678901', 'Gerente', 'carlos@hotel.com', '11987654321', 'Rua Alfa, 100'),
('Fernanda Lima', '98765432100', 'Recepcionista', 'fernanda@hotel.com', '11923456789', 'Rua Beta, 200'),
('Paulo Souza', '45678912345', 'Faxineiro', NULL, '11934567890', NULL),
('Mariana Alves', '65432198700', 'Cozinheira', 'mariana@hotel.com', '11945678901', 'Rua Gama, 400');
