INSERT INTO CLIENTE (CPF_cliente, nome_cliente, data_nascimento_cliente, rua_cliente, numrua_cliente, bairro_cliente, cidade_cliente, uf_cliente, pais_cliente, status_fidelidade_cliente)
VALUES ('12345678901', 'João Silva', '1985-04-20', 'Rua A', 100, 'Centro', 'São Paulo', 'SP', 'Brasil', 'Bronze'); 
       ('98765432100', 'Maria Oliveira', '1990-08-15', 'Rua 1', 202, 'Major Rafael ', 'Rio de Janeiro', 'RJ', 'Brasil', 'Prata');
       ('11223344556', 'Carlos Pereira', '1978-12-25', 'Rua Romário ', 305, 'Contagem', 'Belo Horizonte', 'MG', 'Brasil', 'Ouro');
UPDATE CLIENTE 
SET status_fidelidade_cliente = 'Diamante'
WHERE CPF_cliente = '12345678901';

DELETE FROM CLIENTE
WHERE CPF_cliente = '11223344556';


INSERT INTO FORNECEDORES (id_fornecedor, nome_fornecedor, contato_fornecedor, rua_fornecedor, numrua_fornecedor, bairro_fornecedor, cidade_fornecedor, uf_fornecedor, pais_fornecedor)
VALUES (1, 'Fornecedor A', 'contato@fornecedora.com', 'Rua da Liberdade', 1000, 'Bela Vista', 'São Paulo', 'SP', 'Brasil');
       (2, 'Fornecedor B', 'contato@fornecedorb.com', 'Avenida das Nações', 250, 'Vila Primavera', 'Rio de Janeiro', 'RJ', 'Brasil');
       (3, 'Fornecedor C', 'contato@fornecedorC.com', 'Rua Sete de Setembro', 15, 'Centro', 'Beto Ferreiro', 'SC', 'Brasil');

UPDATE FORNECEDORES
SET contato_fornecedor = 'novocontato@fornecedora.com'
WHERE id_fornecedor = 1;

DELETE FROM FORNECEDORES
WHERE id_fornecedor = 3;

INSERT INTO PRODUTOS (id_produto, nome_produto, categoria_produto, preco_produto, estoque_produto, id_fornecedor)
VALUES (1, 'Produto A', 'Eletrônicos', 1200.50, 50, 1);
       (2, 'Produto B', 'Roupas', 150.75, 100, 2);
       (3, 'Produto C', 'Alimentos', 25.30, 200, 1);

UPDATE PRODUTOS
SET preco_produto = 1300.00
WHERE id_produto = 1;

DELETE FROM PRODUTOS
WHERE id_produto = 2;


INSERT INTO VENDAS (id_venda, data_venda, total_venda, id_cliente)
VALUES (1, '2024-11-10 14:00:00', 1500.00, '12345678901');
       (2, '2024-11-12 16:30:00', 300.00, '98765432100');
       (3, '2024-11-14 10:00:00', 450.00, '12345678901');

UPDATE VENDAS
SET total_venda = 2000.00
WHERE id_venda = 1;

DELETE FROM VENDAS
WHERE id_venda = 3;

INSERT INTO PAGAMENTOS (id_pagamento, data_pagamento, valor_pagamento, status_pagamento, id_venda)
VALUES (1, '2024-11-10', 1500.00, 'Pago', 1);
       (2, '2024-11-12', 300.00, 'Pago', 2);
       (3, '2024-11-14', 450.00, 'Em análise', 3);

UPDATE PAGAMENTOS
SET status_pagamento = 'Cancelado'
WHERE id_pagamento = 3;

DELETE FROM PAGAMENTOS
WHERE id_pagamento = 2;


INSERT INTO Venda_Produtos (id_venda, id_produto, quantidade)
VALUES (1, 1, 2);
       (2, 2, 3);
       (3, 1, 1);

UPDATE Venda_Produtos
SET quantidade = 4
WHERE id_venda = 2 AND id_produto = 2;

DELETE FROM Venda_Produtos
WHERE id_venda = 3 AND id_produto = 1;
