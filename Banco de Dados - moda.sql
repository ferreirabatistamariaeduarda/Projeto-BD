CREATE DATABASE moda;
USE moda;

CREATE TABLE tbProduto(
ID_produto INT AUTO_INCREMENT PRIMARY KEY,
NomeProduto VARCHAR(100),
DescriçãoProduto VARCHAR(1000),
Preço DECIMAL(10, 2),
Quantidade_em_estoque INT,
URL_da_imagem VARCHAR(1000)
);

CREATE TABLE tbCliente(
ID_cliente INT AUTO_INCREMENT PRIMARY KEY,
NomeCliente VARCHAR(100),
CPF INT,
Telefone INT,
Email VARCHAR(50),
EndereçoEntrega VARCHAR(100)
);


CREATE TABLE tbPedido(
ID_pedido INT AUTO_INCREMENT PRIMARY KEY,
ID_cliente INT,
CONSTRAINT fkCliente FOREIGN KEY (ID_cliente) REFERENCES tbCliente (ID_cliente) 
on delete set null on update cascade,
DataPedido DATE,
HoraPedido TIME,
StausPedido VARCHAR(200),
TotalPedido DECIMAL(10, 2)
);

-- criar tabela produto pedido

CREATE TABLE tbProdutoPedido(
ID_produto INT,
ID_pedido INT,
CONSTRAINT fkProdutoPedido FOREIGN KEY (ID_produto) REFERENCES tbProduto (ID_produto) 
on delete set null on update cascade,
CONSTRAINT fkPedido FOREIGN KEY (ID_pedido) REFERENCES tbPedido (ID_pedido) 
on delete set null on update cascade
);

CREATE TABLE tbMarca(
ID_marca INT AUTO_INCREMENT PRIMARY KEY,
NomeMarca VARCHAR(100),
PaisDeOrigem VARCHAR(100)
);


CREATE TABLE tbCategoria(
ID_categoria INT AUTO_INCREMENT PRIMARY KEY,
NomeCategoria VARCHAR(100)
);

-- criar tabela produto categoria
CREATE TABLE tbProdutoCategoria(
ID_produto INT,
ID_categoria INT,
CONSTRAINT fkProdutoCategoria FOREIGN KEY (ID_produto) REFERENCES tbProduto (ID_produto) 
on delete set null on update cascade,
CONSTRAINT fkCategoria FOREIGN KEY (ID_categoria) REFERENCES tbCategoria (ID_categoria) 
on delete set null on update cascade
);

CREATE TABLE tbAvaliação(
ID_avaliacao INT AUTO_INCREMENT PRIMARY KEY,
Pontuacao INT,
Comentario VARCHAR(1000),
ID_produto INT,
ID_cliente INT,
CONSTRAINT fkProduto FOREIGN KEY (ID_produto) REFERENCES tbProduto (ID_produto) 
on delete set null on update cascade,
CONSTRAINT fkClienteAvaliacao FOREIGN KEY (ID_cliente) REFERENCES tbCliente (ID_cliente) 
on delete set null on update cascade
);

CREATE TABLE tbCarrinhoDeCompras(
ID_carrinho INT AUTO_INCREMENT PRIMARY KEY,
DataCriacao DATE,
HoraCriacao TIME,
ID_cliente INT,
CONSTRAINT fkClienteCarrinho FOREIGN KEY (ID_cliente) REFERENCES tbCliente (ID_cliente) 
on delete set null on update cascade
);

-- criar tabela produto promoção
CREATE TABLE tbProdutoPromocao(
ID_produto INT,
ID_promocao INT,
CONSTRAINT fkProdutoPromocao FOREIGN KEY (ID_produto) REFERENCES tbProduto (ID_produto) 
on delete set null on update cascade,
CONSTRAINT fkPromocao FOREIGN KEY (ID_promocao) REFERENCES tbPromocao (ID_promocao) 
on delete set null on update cascade
);

CREATE TABLE tbPromocao(
ID_promocao INT AUTO_INCREMENT PRIMARY KEY,
DescontoPercentual DECIMAL(5, 2),
DataInicio DATE,
DataFim DATE
);

