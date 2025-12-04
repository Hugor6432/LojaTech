DROP DATABASE IF EXISTS Tech;
CREATE DATABASE Tech;
USE Tech;

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    cidade VARCHAR(50)
);

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    data_pedido DATE,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE Itens_Pedido (
    id_item INT PRIMARY KEY,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);

INSERT INTO Clientes VALUES
(1, 'Hugo Almeida', 'hugo@gmail.com', '21990000001', 'Maricá'),
(2, 'Ana Souza', 'ana@gmail.com', '21990000002', 'Niterói'),
(3, 'Carlos Lima', 'carlos@gmail.com', '21990000003', 'São Gonçalo'),
(4, 'Mariana Rocha', 'mariana@gmail.com', '21990000004', 'Maricá'),
(5, 'João Pedro', 'joao@gmail.com', '21990000005', 'Itaboraí'),
(6, 'Paula Santos', 'paula@gmail.com', '21990000006', 'Niterói');

INSERT INTO Produtos VALUES
(1, 'Mouse Gamer', 120.00, 50),
(2, 'Teclado Mecânico', 250.00, 20),
(3, 'Headset USB', 180.00, 40),
(4, 'Monitor 24 Polegadas', 720.00, 15),
(5, 'Mousepad Grande', 45.00, 80);

INSERT INTO Pedidos VALUES
(1, '2025-01-10', 1),
(2, '2025-01-12', 2),
(3, '2025-01-15', 4),
(4, '2025-01-20', 1);

INSERT INTO Itens_Pedido VALUES
(1, 1, 1, 2),
(2, 1, 3, 1),
(3, 2, 2, 1),
(4, 3, 4, 1),
(5, 4, 5, 3),
(6, 4, 1, 1);

SELECT * FROM Clientes;

SELECT * FROM Produtos
WHERE preco > 150;

SELECT Pedidos.id_pedido, Pedidos.data_pedido, Clientes.nome
FROM Pedidos
INNER JOIN Clientes ON Pedidos.id_cliente = Clientes.id_cliente;

SELECT Produtos.nome_produto, Itens_Pedido.quantidade
FROM Itens_Pedido
INNER JOIN Produtos ON Itens_Pedido.id_produto = Produtos.id_produto
WHERE id_pedido = 1;

SELECT SUM(Produtos.preco * Itens_Pedido.quantidade) AS valor_total_pedido_1
FROM Itens_Pedido
INNER JOIN Produtos ON Itens_Pedido.id_produto = Produtos.id_produto
WHERE id_pedido = 1;

SELECT * FROM Produtos
WHERE estoque > 30;

SELECT Pedidos.id_pedido, Clientes.nome, Clientes.cidade
FROM Pedidos
INNER JOIN Clientes ON Pedidos.id_cliente = Clientes.id_cliente
WHERE Clientes.cidade = 'Maricá';

SELECT DISTINCT Produtos.nome_produto
FROM Itens_Pedido
INNER JOIN Produtos ON Itens_Pedido.id_produto = Produtos.id_produto
INNER JOIN Pedidos ON Itens_Pedido.id_pedido = Pedidos.id_pedido
WHERE Pedidos.id_cliente = 1;

SELECT COUNT(*) AS total_pedidos
FROM Pedidos;

SELECT SUM(estoque) AS estoque_total
FROM Produtos;

