-- PAGAMENTO
INSERT INTO pagamento VALUES
(1, 'Cartão', 'Crédito', '2025-01-10 14:23:00', 120.50),
(2, 'Cartão', 'Débito', '2025-01-11 10:11:00', 75.00),
(3, 'Boleto', 'Bancário', '2025-01-12 09:15:00', 300.00),
(4, 'Pix', 'Transferência', '2025-01-13 18:40:00', 59.90),
(5, 'Dinheiro', 'À vista', '2025-01-14 12:00:00', 200.00),
(6, 'Pix', 'Transferência', '2025-01-15 21:10:00', 40.00),
(7, 'Cartão', 'Crédito', '2025-01-16 16:30:00', 150.00),
(8, 'Boleto', 'Bancário', '2025-01-17 08:45:00', 320.00),
(9, 'Cartão', 'Débito', '2025-01-18 11:20:00', 80.00),
(10, 'Dinheiro', 'À vista', '2025-01-19 13:05:00', 99.99);

-- VEICULO
INSERT INTO veiculo VALUES
(1, 'Carro', 'ABC1234'),
(2, 'Moto', 'XYZ9876'),
(3, 'Caminhão', 'KLM4321'),
(4, 'Carro', 'HJK5678'),
(5, 'Moto', 'WER3456'),
(6, 'Carro', 'QWE1111'),
(7, 'Caminhão', 'RTY2222'),
(8, 'Carro', 'UIO3333'),
(9, 'Moto', 'ASD4444'),
(10, 'Carro', 'FGH5555');

-- MOTORISTA
INSERT INTO motorista VALUES
(1, 'joao@email.com','912345678','123456789','João Silva','12345678901'),
(2, 'maria@email.com','987654321','987654321','Maria Oliveira','98765432109'),
(3, 'carlos@email.com','934567890','111222333','Carlos Souza','45678912345'),
(4, 'ana@email.com','923456789','444555666','Ana Costa','23456789123'),
(5, 'pedro@email.com','956789012','777888999','Pedro Lima','34567891234'),
(6, 'juliana@email.com','945612378','555444333','Juliana Rocha','56789123456'),
(7, 'lucas@email.com','912398765','666555444','Lucas Mendes','67891234567'),
(8, 'fernanda@email.com','987612345','888999000','Fernanda Alves','78912345678'),
(9, 'rodrigo@email.com','934512876','333222111','Rodrigo Martins','89123456789'),
(10, 'camila@email.com','976543210','222333444','Camila Ferreira','91234567890');

-- ENTREGA
INSERT INTO entrega VALUES
(1, '2025-01-15 14:00:00','2025-01-10 09:00:00',20.00,'Aguardando'),
(2, '2025-01-16 18:00:00','2025-01-11 10:30:00',35.00,'EmTransporte'),
(3, '2025-01-17 20:00:00','2025-01-12 15:00:00',50.00,'Concluida'),
(4, '2025-01-18 08:00:00','2025-01-13 13:00:00',15.00,'Cancelada'),
(5, '2025-01-19 12:00:00','2025-01-14 11:00:00',25.00,'Aguardando'),
(6, '2025-01-20 17:00:00','2025-01-15 16:00:00',45.00,'Concluida'),
(7, '2025-01-21 10:00:00','2025-01-16 12:00:00',30.00,'EmTransporte'),
(8, '2025-01-22 14:00:00','2025-01-17 14:00:00',60.00,'Concluida'),
(9, '2025-01-23 18:00:00','2025-01-18 15:00:00',70.00,'Cancelada'),
(10, '2025-01-24 09:00:00','2025-01-19 10:00:00',22.00,'Aguardando');

-- CLIENTE PF
INSERT INTO clientePF VALUES
(1, 'André Santos','andre@email.com','911111111','Rua A, 123','12345678901'),
(2, 'Bruna Souza','bruna@email.com','922222222','Rua B, 456','23456789012'),
(3, 'Carlos Mendes','carlos@email.com','933333333','Rua C, 789','34567890123'),
(4, 'Daniela Lima','daniela@email.com','944444444','Rua D, 321','45678901234'),
(5, 'Eduardo Alves','eduardo@email.com','955555555','Rua E, 654','56789012345'),
(6, 'Fernanda Rocha','fernanda@email.com','966666666','Rua F, 987','67890123456'),
(7, 'Gustavo Costa','gustavo@email.com','977777777','Rua G, 159','78901234567'),
(8, 'Helena Martins','helena@email.com','988888888','Rua H, 753','89012345678'),
(9, 'Igor Ferreira','igor@email.com','999999999','Rua I, 852','90123456789'),
(10, 'Juliana Dias','juliana@email.com','900000000','Rua J, 951','12312312312');

-- CLIENTE PJ
INSERT INTO clientePJ VALUES
(1, 'Tech Solutions','contato@tech.com','911122233','Av. Paulista, 1000','12345678000199'),
(2, 'LogiTrans','logi@trans.com','922233344','Rua das Flores, 50','23456789000188'),
(3, 'MegaStore','contato@megastore.com','933344455','Av. Central, 200','34567890000177'),
(4, 'FoodExpress','atendimento@foodexpress.com','944455566','Rua Gourmet, 300','45678901000166'),
(5, 'Construtora Alpha','alpha@construtora.com','955566677','Av. Obras, 400','56789012000155'),
(6, 'Global Import','vendas@global.com','966677788','Rua Comercio, 500','67890123000144'),
(7, 'AgroBrasil','contato@agro.com','977788899','Estrada Rural, 600','78901234000133'),
(8, 'EducaMais','suporte@educa.com','988899900','Av. Educação, 700','89012345000122'),
(9, 'MobiTech','tech@mobi.com','999900011','Rua Digital, 800','90123456000111'),
(10, 'CleanUp','contato@cleanup.com','900011122','Av. Verde, 900','12345067000100');

-- ENCOMENDA
INSERT INTO encomenda VALUES
(1, 200.00, 30.5, 2.5, 'Caixa de eletrônicos', 1),
(2, 150.00, 15.0, 1.2, 'Pacote de roupas', 2),
(3, 500.00, 60.0, 5.5, 'Peças de computador', 3),
(4, 80.00, 10.0, 0.8, 'Livro', 4),
(5, 1000.00, 100.0, 8.0, 'Televisor 50"', 5),
(6, 50.00, 5.0, 0.5, 'Brinquedo infantil', 6),
(7, 75.00, 8.0, 0.7, 'Utensílios domésticos', 7),
(8, 220.00, 25.0, 2.2, 'Ferramentas', 8),
(9, 400.00, 45.0, 4.0, 'Notebook', 9),
(10, 60.00, 6.0, 0.6, 'Perfume', 10);

-- CLIENTES (metade PF e metade PJ)
INSERT INTO clientes VALUES
(1, NULL),  -- PF
(2, NULL),  -- PF
(3, NULL),  -- PF
(4, NULL),  -- PF
(5, NULL),  -- PF
(NULL, 1),  -- PJ
(NULL, 2),  -- PJ
(NULL, 3),  -- PJ
(NULL, 4),  -- PJ
(NULL, 5);  -- PJ

