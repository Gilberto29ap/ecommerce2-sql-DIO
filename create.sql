CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE Cliente (
    ID_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Endereco VARCHAR(255) NOT NULL
);

CREATE TABLE Pedido (
    ID_Pedido INT AUTO_INCREMENT PRIMARY KEY,
    ID_Cliente INT NOT NULL,
    Data_Pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    Status ENUM('RECEBIDO', 'PROCESSANDO', 'ENVIADO', 'ENTREGUE', 'CANCELADO') NOT NULL,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente)
);

CREATE TABLE Produto (
    ID_Produto INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL CHECK (Preco > 0)
);

CREATE TABLE Estoque (
    ID_Estoque INT AUTO_INCREMENT PRIMARY KEY,
    Localizacao VARCHAR(255) NOT NULL
);

CREATE TABLE Fornecedor (
    ID_Fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255) NOT NULL
);

CREATE TABLE Vendedor_Terceirizado (
    ID_Vendedor INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Contato VARCHAR(255) NOT NULL
);

CREATE TABLE Produto_Pedido (
    ID_Pedido INT,
    ID_Produto INT,
    Quantidade INT NOT NULL CHECK (Quantidade > 0),
    PRIMARY KEY (ID_Pedido, ID_Produto),
    FOREIGN KEY (ID_Pedido) REFERENCES Pedido(ID_Pedido),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);

CREATE TABLE Produto_Estoque (
    ID_Produto INT,
    ID_Estoque INT,
    Quantidade INT NOT NULL CHECK (Quantidade >= 0),
    PRIMARY KEY (ID_Produto, ID_Estoque),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto),
    FOREIGN KEY (ID_Estoque) REFERENCES Estoque(ID_Estoque)
);

CREATE TABLE Fornecedor_Produto (
    ID_Fornecedor INT,
    ID_Produto INT,
    PRIMARY KEY (ID_Fornecedor, ID_Produto),
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);

CREATE TABLE Vendedor_Produto (
    ID_Vendedor INT,
    ID_Produto INT,
    PRIMARY KEY (ID_Vendedor, ID_Produto),
    FOREIGN KEY (ID_Vendedor) REFERENCES Vendedor_Terceirizado(ID_Vendedor),
    FOREIGN KEY (ID_Produto) REFERENCES Produto(ID_Produto)
);
