USE moda;

INSERT INTO tbProduto (NomeProduto, DescriçãoProduto, Preço, Quantidade_em_estoque, URL_da_imagem)
VALUES ('Camiseta Branca', 'Camiseta de algodão branca', 25.99, 100, 'http://exemplo.com/imagem1.jpg');

INSERT INTO tbCliente (NomeCliente, CPF, Telefone, Email, EndereçoEntrega)
VALUES ('Maria Eduarda', 123456789, 987654321, 'maria@email.com', 'Rua A, 123');

INSERT INTO tbPromocao (DescontoPercentual, DataInicio, DataFim)
VALUES (10.00, '2023-08-01', '2023-08-15');

INSERT INTO tbPedido (ID_cliente, DataPedido, HoraPedido, StausPedido, TotalPedido)
VALUES (1, '2023-08-10', '14:30:00', 'Pendente', 100.50);

INSERT INTO tbProdutoPromocao (ID_produto, ID_promocao)
VALUES (1, 1);

INSERT INTO tbMarca (NomeMarca, PaisDeOrigem)
VALUES ('Chanel', 'França');

INSERT INTO tbCategoria (NomeCategoria)
VALUES ('Roupas');

INSERT INTO tbProdutoCategoria (ID_produto, ID_categoria)
VALUES (1, 1);

INSERT INTO tbAvaliação (Pontuacao, Comentario, ID_produto, ID_cliente)
VALUES (4, 'Ótimo produto!', 1, 1);

INSERT INTO tbCarrinhoDeCompras (DataCriacao, HoraCriacao, ID_cliente)
VALUES ('2023-08-10', '21:41:00', 1);
