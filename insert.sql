USE ecommerce;

-- Inserção de dados na tabela Cliente
INSERT INTO Cliente (Nome, Email, Endereco)
VALUES 
('João Silva', 'joao.silva@gmail.com', 'Rua das Flores, 100'),
('Maria Oliveira', 'maria.oliveira@gmail.com', 'Avenida das Orquídeas, 200'),
('Carlos Pereira', 'carlos.pereira@gmail.com', 'Rua das Palmeiras, 300'),
('Ana Souza', 'ana.souza@gmail.com', 'Avenida dos Jacarandás, 400'),
('Fernando Andrade', 'fernando.andrade@gmail.com', 'Rua das Cerejeiras, 500');

-- Inserção de dados na tabela Produto
INSERT INTO Produto (Nome, Descricao, Preco)
VALUES 
('Tênis X', 'Tênis confortável para atividades esportivas', 150.00),
('Camiseta Y', 'Camiseta 100% algodão', 50.00),
('Calça Z', 'Calça jeans masculina', 120.00),
('Vestido W', 'Vestido de algodão feminino', 80.00),
('Jaqueta V', 'Jaqueta de couro unisex', 300.00);

-- Inserção de dados na tabela Estoque
INSERT INTO Estoque (Localizacao)
VALUES 
('Loja Centro'), 
('Loja Norte'),
('Loja Sul'),
('Loja Leste'),
('Loja Oeste');

-- Inserção de dados na tabela Fornecedor
INSERT INTO Fornecedor (Nome, Endereco)
VALUES 
('Fornecedor de Calçados', 'Rua dos Calçados, 500'),
('Fornecedor de Roupas', 'Avenida das Roupas, 600'),
('Fornecedor de Jeans', 'Avenida dos Jeans, 700'),
('Fornecedor de Vestidos', 'Rua dos Vestidos, 800'),
('Fornecedor de Jaquetas', 'Avenida das Jaquetas, 900');

-- Inserção de dados na tabela Vendedor_Terceirizado
INSERT INTO Vendedor_Terceirizado (Nome, Contato)
VALUES 
('Vendedor Externo 1', 'vendedor.externo1@gmail.com'),
('Vendedor Externo 2', 'vendedor.externo2@gmail.com'),
('Vendedor Externo 3', 'vendedor.externo3@gmail.com'),
('Vendedor Externo 4', 'vendedor.externo4@gmail.com'),
('Vendedor Externo 5', 'vendedor.externo5@gmail.com');

-- Inserção de dados na tabela Pedido
INSERT INTO Pedido (ID_Cliente, Status)
VALUES 
(1, 'RECEBIDO'), 
(2, 'RECEBIDO'), 
(3, 'ENVIADO'), 
(4, 'ENTREGUE'), 
(5, 'CANCELADO');

-- Inserção de dados na tabela Produto_Pedido
INSERT INTO Produto_Pedido (ID_Pedido, ID_Produto, Quantidade)
VALUES 
(1, 1, 2), 
(1, 2, 1), 
(2, 2, 3), 
(3, 3, 2), 
(4, 4, 1), 
(5, 5, 1);

-- Inserção de dados na tabela Produto_Estoque
INSERT INTO Produto_Estoque (ID_Produto, ID_Estoque, Quantidade)
VALUES 
(1, 1, 50), 
(1, 2, 30), 
(2, 1, 100), 
(2, 2, 70), 
(3, 3, 60), 
(4, 4, 80), 
(5, 5, 40);

-- Inserção de dados na tabela Fornecedor_Produto
INSERT INTO Fornecedor_Produto (ID_Fornecedor, ID_Produto)
VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5);

-- Inserção de dados na tabela Vendedor_Produto
INSERT INTO Vendedor_Produto (ID_Vendedor, ID_Produto)
VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5);
