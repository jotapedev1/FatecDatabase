    CREATE DATABASE licao;
    USE licao;

    CREATE TABLE produtos (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100),
        preco DECIMAL(10, 2),
        estoque INT
    );

    INSERT INTO produtos (nome, preco, estoque)
    VALUES ('Teclado Mecânico', 250.00, 15);

    CREATE TABLE clientes (
        id INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100),
        email VARCHAR(150),
        telefone VARCHAR(15)
    );


    INSERT INTO clientes (nome, email, telefone)
        VALUES ('Ana Silva', 'ana@example.com', '99999-9999'),
        ('Carlos Souza', 'carlos@example.com', '98888-8888'),
        ('Maria Oliveira', 'maria@example.com', '97777-7777');

    UPDATE clientes
    SET telefone = '91111-1111'
    WHERE nome = 'Carlos Souza';

    UPDATE clientes
    SET email = REPLACE(email, 'example.com', 'novodominio.com')
    WHERE email LIKE '%example.com';

    DELETE FROM clientes WHERE nome LIKE '%Silva%';
    DELETE FROM produtos WHERE estoque = 0;
