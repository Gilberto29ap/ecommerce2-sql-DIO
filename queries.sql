-- Selecionar o banco de dados ecommerce
USE ecommerce;

-- 1. Consulta para listar todos os clientes
SELECT * FROM Cliente;

-- 2. Consulta para listar todos os produtos que custam mais de 100.00
SELECT * FROM Produto WHERE Preco > 100.00;

-- 3. Consulta para listar todos os pedidos feitos por um determinado cliente, usando o ID do cliente
SELECT * FROM Pedido WHERE ID_Cliente = 1;

-- 4. Consulta para descobrir quais produtos foram incluídos em um determinado pedido, usando o ID do pedido
SELECT Produto.* FROM Produto
JOIN Produto_Pedido ON Produto.ID_Produto = Produto_Pedido.ID_Produto
WHERE Produto_Pedido.ID_Pedido = 1;

-- 5. Consulta para saber qual é a quantidade total de um determinado produto em todos os estoques
SELECT SUM(Quantidade) as Quantidade_Total FROM Produto_Estoque WHERE ID_Produto = 1;

-- 6. Consulta para listar todos os produtos fornecidos por um determinado fornecedor
SELECT Produto.* FROM Produto
JOIN Fornecedor_Produto ON Produto.ID_Produto = Fornecedor_Produto.ID_Produto
WHERE Fornecedor_Produto.ID_Fornecedor = 1;

-- 7. Consulta para listar todos os pedidos que estão no status 'RECEBIDO'
SELECT * FROM Pedido WHERE Status = 'RECEBIDO';
