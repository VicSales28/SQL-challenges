DROP DATABASE IF EXISTS tinaModas;

CREATE DATABASE IF NOT EXISTS tinaModas;

USE tinaModas;

-- Cria a tabela de clientes

CREATE TABLE
    clientes (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        email VARCHAR(100) NOT NULL,
        telefone VARCHAR(20),
        endereco VARCHAR(200)
    );

-- Insere clientes na tabela de clientes

INSERT INTO
    clientes (nome, email, telefone, endereco)
VALUES (
        'Joao Silva',
        'joao.silva@example.com',
        '(11) 9999-8888',
        'Rua A, 123 - Sao Paulo'
    ), (
        'Maria Souza',
        'maria.souza@example.com',
        '(11) 9888-7777',
        'Rua B, 456 - Sao Paulo'
    ), (
        'Pedro Oliveira',
        'pedro.oliveira@example.com',
        '(11) 97777-6666',
        'Av. C, 789 - Belo Horizonte - MG'
    ), (
        'Lucas Santos',
        'lucas.santos@example.com',
        '(11) 96666-5555',
        'Rua D, 321 - Rio de Janeiro - RJ'
    ), (
        'Ana Paula',
        'ana.paula@example.com',
        '(11) 95555-4444',
        'Av. E, 654 - SP'
    ), (
        'Felipe Correia',
        'felipe.correia@example.com',
        '(11) 94444-3333',
        'Rua F, 987 - Sao Paulo'
    ), (
        'Camila Alves',
        'camila.alves@example.com',
        '(11) 93333-2222',
        'Av. G, 654 - Belo Horizonte'
    ), (
        'Eduardo Junior',
        'eduardo.junior@example.com',
        '(11) 92222-1111',
        'Rua H, 321 - Belo Horizonte'
    ), (
        'Fernanda Ferreira',
        'fernanda.ferreira@example.com',
        '(11) 91111-0000',
        'Av. I, 987'
    ), (
        'Gustavo Batista',
        'gustavo.batista@example.com',
        '(11) 90000-9999',
        'Rua J, 654 - Rio de Janeiro - RJ'
    ), (
        'Juliana Freitas',
        'juliana.freitas@example.com',
        '(11) 99999-0000',
        'Rua K, 158 - SaoPaulo'
    );

-- Cria a tabela de produtos

CREATE TABLE
    produtos (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome VARCHAR(100) NOT NULL,
        preco DECIMAL(10, 2) NOT NULL,
        descricao VARCHAR(500),
        estoque INT NOT NULL DEFAULT 0
    );

-- Insere produtos na tabela de produtos

INSERT INTO
    produtos (nome, preco, descricao, estoque)
VALUES (
        'Camisa Polo',
        59.90,
        'Camisa polo de algodao',
        100
    ), (
        'Calca Jeans',
        89.90,
        'Calca jeans basica',
        50
    ), (
        'Sapato Social',
        129.90,
        'Sapato social de couro',
        20
    ), (
        'Camiseta',
        29.90,
        'Camiseta basica',
        200
    ), ('Saia', 79.90, 'Saia longa', 30), (
        'Vestido',
        149.90,
        'Vestido longo',
        15
    ), (
        'Tenis',
        99.90,
        'Tenis esportivo',
        80
    ), (
        'Bermuda',
        69.90,
        'Bermuda masculina',
        40
    ), (
        'Sapatilha',
        79.90,
        'Sapatilha feminina',
        25
    ), (
        'Blusa',
        49.90,
        'Blusa de trico',
        60
    );

-- Cria a tabela de pedidos

CREATE TABLE
    pedidos (
        id INT AUTO_INCREMENT PRIMARY KEY,
        cliente_id INT NOT NULL,
        data_pedido TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
        FOREIGN KEY (cliente_id) REFERENCES clientes(id)
    );

-- Insere pedidos na tabela de pedidos

INSERT INTO
    pedidos (cliente_id, data_pedido)
VALUES (7, '2020-12-20 13:05:15'), (1, '2021-01-18 08:10:42'), (4, '2021-04-10 10:15:58'), (2, '2022-05-21 11:10:00'), (2, '2022-07-08 15:12:24'), (3, '2022-10-01 18:18:45'), (4, '2022-11-29 12:53:21'), (7, '2022-12-09 15:25:54'), (9, '2022-12-15 09:06:36'), (10, '2022-12-16 11:26:22'), (2, '2023-02-11 08:32:54'), (2, '2023-03-17 12:01:12'), (2, '2023-03-18 13:18:14'), (6, '2023-04-10 16:24:25'), (7, '2023-05-01 07:42:36');

-- Cria a tabela de itens de pedido

CREATE TABLE
    itens_pedido (
        id INT AUTO_INCREMENT PRIMARY KEY,
        pedido_id INT NOT NULL,
        produto_id INT NOT NULL,
        quantidade INT NOT NULL,
        preco_unitario DECIMAL(10, 2) NOT NULL,
        FOREIGN KEY (pedido_id) REFERENCES pedidos(id),
        FOREIGN KEY (produto_id) REFERENCES produtos(id)
    );

-- Insere itens_pedido para cada pedido

INSERT INTO
    itens_pedido (
        pedido_id,
        produto_id,
        quantidade,
        preco_unitario
    )
VALUES (1, 1, 2, 59.90), (1, 2, 1, 89.90), (1, 3, 1, 129.90), (2, 4, 3, 29.90), (2, 5, 2, 79.90), (3, 6, 1, 149.90), (3, 7, 1, 99.90), (3, 8, 2, 69.90), (4, 9, 1, 79.90), (4, 10, 1, 49.90), (5, 1, 1, 59.90), (5, 3, 2, 129.90), (6, 2, 1, 89.90), (6, 4, 2, 29.90), (6, 5, 1, 79.90), (7, 6, 1, 149.90), (7, 7, 2, 99.90), (8, 8, 1, 69.90), (8, 9, 1, 79.90), (8, 10, 1, 49.90), (9, 1, 2, 59.90), (9, 2, 1, 89.90), (10, 4, 3, 29.90), (10, 5, 2, 79.90), (11, 8, 2, 69.90), (11, 9, 1, 79.90), (12, 10, 1, 49.90), (12, 1, 1, 59.90), (12, 3, 2, 129.90), (13, 2, 1, 89.90), (14, 4, 2, 29.90), (14, 5, 1, 79.90), (15, 6, 1, 149.90), (15, 4, 2, 149.90);