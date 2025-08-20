-- CLIENTES
INSERT INTO cliente (id_cliente, nome, razao_social, email, telefone) VALUES
(1, 'João Silva', NULL, 'joao@email.com', '11999990001'),
(2, 'Maria Oliveira', NULL, 'maria@email.com', '11999990002'),
(3, NULL, 'Loja Tech LTDA', 'contato@lojatech.com', '1133330001'),
(4, 'Carlos Souza', NULL, 'carlos@email.com', '11999990003'),
(5, NULL, 'Supermercado BomPreço SA', 'contato@bompreco.com', '1144440001'),
(6, 'Ana Costa', NULL, 'ana@email.com', '11999990004'),
(7, 'Pedro Gomes', NULL, 'pedro@email.com', '11999990005'),
(8, NULL, 'Construtora Alfa LTDA', 'contato@alfa.com', '1155550001'),
(9, 'Juliana Alves', NULL, 'juliana@email.com', '11999990006'),
(10, NULL, 'Distribuidora Beta SA', 'contato@beta.com', '1166660001');

-- ENDERECOS (múltiplos para alguns clientes)
INSERT INTO endereco (id_endereco, id_cliente, logradouro, numero, bairro, cidade, estado, cep) VALUES
(1, 1, 'Rua A', '100', 'Centro', 'São Paulo', 'SP', '01001000'),
(2, 1, 'Rua B', '200', 'Mooca', 'São Paulo', 'SP', '03110000'),
(3, 2, 'Av Brasil', '1500', 'Jardins', 'São Paulo', 'SP', '01430000'),
(4, 3, 'Rua das Indústrias', '500', 'Industrial', 'Osasco', 'SP', '06233000'),
(5, 4, 'Rua das Flores', '300', 'Vila Mariana', 'São Paulo', 'SP', '04117000'),
(6, 5, 'Av Paulista', '1000', 'Bela Vista', 'São Paulo', 'SP', '01310000'),
(7, 5, 'Av Faria Lima', '2000', 'Itaim Bibi', 'São Paulo', 'SP', '04538000'),
(8, 6, 'Rua Verde', '50', 'Butantã', 'São Paulo', 'SP', '05577000'),
(9, 7, 'Rua Azul', '77', 'Pinheiros', 'São Paulo', 'SP', '05422000'),
(10, 8, 'Av Central', '100', 'Centro', 'Barueri', 'SP', '06455000');

-- VEICULOS
INSERT INTO veiculo (id_veiculo, tipo, placa) VALUES
(1, 'Caminhão', 'ABC1234'),
(2, 'Van', 'DEF5678'),
(3, 'Moto', 'GHI9012'),
(4, 'Caminhão', 'JKL3456'),
(5, 'Van', 'MNO7890'),
(6, 'Caminhão', 'PQR1234'),
(7, 'Moto', 'STU5678'),
(8, 'Van', 'VWX9012'),
(9, 'Caminhão', 'YZA3456'),
(10, 'Moto', 'BCD7890');

-- MOTORISTAS
INSERT INTO motorista (id_motorista, nome, email, telefone, cnh, cpf) VALUES
(1, 'Rafael Lima', 'rafael@fast.com', '11988880001', '1234567890', '11111111111'),
(2, 'Marcos Pereira', 'marcos@fast.com', '11988880002', '1234567891', '22222222222'),
(3, 'Lucas Santos', 'lucas@fast.com', '11988880003', '1234567892', '33333333333'),
(4, 'Diego Almeida', 'diego@fast.com', '11988880004', '1234567893', '44444444444'),
(5, 'Felipe Costa', 'felipe@fast.com', '11988880005', '1234567894', '55555555555'),
(6, 'Ricardo Gomes', 'ricardo@fast.com', '11988880006', '1234567895', '66666666666'),
(7, 'Tiago Rocha', 'tiago@fast.com', '11988880007', '1234567896', '77777777777'),
(8, 'André Martins', 'andre@fast.com', '11988880008', '1234567897', '88888888888'),
(9, 'Bruno Carvalho', 'bruno@fast.com', '11988880009', '1234567898', '99999999999'),
(10, 'Paulo Henrique', 'paulo@fast.com', '11988880010', '1234567899', '00000000000');

-- ENTREGAS
INSERT INTO entrega (id_entrega, id_cliente, id_motorista, id_veiculo, data_prevista, valor_frete, status) VALUES
(1, 1, 1, 1, '2025-08-25 10:00:00', 120.00, 'Aguardando'),
(2, 2, 2, 2, '2025-08-26 14:00:00', 80.00, 'EmTransporte'),
(3, 3, 3, 3, '2025-08-27 09:00:00', 200.00, 'Concluida'),
(4, 4, 4, 4, '2025-08-28 11:00:00', 150.00, 'Aguardando'),
(5, 5, 5, 5, '2025-08-29 15:00:00', 300.00, 'Cancelada'),
(6, 6, 6, 6, '2025-08-30 08:00:00', 100.00, 'EmTransporte'),
(7, 7, 7, 7, '2025-08-31 12:00:00', 180.00, 'Concluida'),
(8, 8, 8, 8, '2025-09-01 16:00:00', 250.00, 'Aguardando'),
(9, 9, 9, 9, '2025-09-02 10:30:00', 90.00, 'EmTransporte'),
(10, 10, 10, 10, '2025-09-03 13:00:00', 400.00, 'Concluida');

-- PAGAMENTOS
INSERT INTO pagamento (id_pagamento, id_entrega, tipo, forma, data_pagamento, valor_pago) VALUES
(1, 1, 'Frete', 'Pix', '2025-08-20 09:00:00', 60.00),
(2, 1, 'Frete', 'Dinheiro', '2025-08-21 09:00:00', 40.00),
(3, 2, 'Frete', 'Cartão', '2025-08-22 14:00:00', 80.00),
(4, 3, 'Frete', 'Pix', '2025-08-23 10:00:00', 200.00),
(5, 4, 'Frete', 'Boleto', '2025-08-24 11:00:00', 100.00),
(6, 6, 'Frete', 'Pix', '2025-08-25 12:00:00', 50.00),
(7, 6, 'Frete', 'Pix', '2025-08-26 12:30:00', 40.00),
(8, 8, 'Frete', 'Cartão', '2025-08-27 15:00:00', 250.00),
(9, 9, 'Frete', 'Dinheiro', '2025-08-28 13:00:00', 90.00),
(10, 10, 'Frete', 'Pix', '2025-08-29 16:00:00', 400.00);

-- ENCOMENDAS
INSERT INTO encomenda (id_encomenda, id_entrega, descricao, peso_kg, altura_cm, largura_cm, comprimento_cm) VALUES
(1, 1, 'Caixa de livros', 10, 40, 30, 50),
(2, 2, 'Notebook', 2, 10, 30, 40),
(3, 3, 'TV 50 polegadas', 12, 70, 120, 20),
(4, 4, 'Caixa de roupas', 5, 50, 40, 60),
(5, 5, 'Geladeira', 60, 170, 70, 70),
(6, 6, 'Microondas', 12, 40, 40, 50),
(7, 7, 'Mesa desmontada', 25, 100, 80, 10),
(8, 8, 'Cadeira de escritório', 15, 110, 50, 50),
(9, 9, 'Celular', 1, 10, 15, 10),
(10, 10, 'Sofá 3 lugares', 80, 90, 200, 90);

-- ROTEIRO PARADA
INSERT INTO roteiro_parada (id_parada, id_entrega, ordem, endereco_destino, hora_prevista, hora_real) VALUES
(1, 1, 1, 'Rua A, 100 - SP', '2025-08-25 10:00:00', NULL),
(2, 1, 2, 'Rua B, 200 - SP', '2025-08-25 11:00:00', NULL),
(3, 2, 1, 'Av Brasil, 1500 - SP', '2025-08-26 14:00:00', NULL),
(4, 3, 1, 'Rua das Indústrias, 500 - Osasco', '2025-08-27 09:00:00', '2025-08-27 09:15:00'),
(5, 4, 1, 'Rua das Flores, 300 - SP', '2025-08-28 11:00:00', NULL),
(6, 5, 1, 'Av Paulista, 1000 - SP', '2025-08-29 15:00:00', NULL),
(7, 6, 1, 'Rua Verde, 50 - SP', '2025-08-30 08:00:00', '2025-08-30 08:20:00'),
(8, 7, 1, 'Rua Azul, 77 - SP', '2025-08-31 12:00:00', NULL),
(9, 8, 1, 'Av Central, 100 - Barueri', '2025-09-01 16:00:00', NULL),
(10, 9, 1, 'Rua A, 300 - SP', '2025-10-07 16:20:24', NULL);
