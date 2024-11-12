INSERT INTO CLIENTES (cod_cli, cnpj_cli, razao_social_cli, ramo_atividade_cli, data_cadastramento_cli, pessoa_contato_cli)
VALUES (1, '12345678000195', 'Empresa A Ltda', 'Comércio', '2023-01-01', 'João Silva');
       (2, '23456789000182', 'Empresa B Ltda', 'Serviços', '2023-02-15', 'Maria Oliveira');
       (3, '34567890000173', 'Empresa C Ltda', 'Indústria', '2023-03-10', 'Carlos Pereira');
UPDATE CLIENTES
SET razao_social_cli = 'Empresa A S/A', ramo_atividade_cli = 'Comércio Eletrônico'
WHERE cod_cli = 1;

DELETE FROM CLIENTES
WHERE cod_cli = 3;

INSERT INTO TIPOS_ENDERECO (cod_tip_end, nome_tip_end)
VALUES (1, 'Residencial');
       (2, 'Comercial');
       (3, 'Industrial');
UPDATE TIPOS_ENDERECO
SET nome_tip_end = 'Comercial e Residencial'
WHERE cod_tip_end = 2;

DELETE FROM TIPOS_ENDERECO
WHERE cod_tip_end = 3;

INSERT INTO TIPOS_COMPONENTE (cod_tipo_componentes, nome_tipo_componentes)
VALUES (1, 'Elétrico');
       (2, 'Mecânico');
       (3, 'Estrutural');
UPDATE TIPOS_COMPONENTE
SET nome_tipo_componentes = 'Elétrico e Eletrônico'
WHERE cod_tipo_componentes = 1;

DELETE FROM TIPOS_COMPONENTE
WHERE cod_tipo_componentes = 2;

INSERT INTO MAQUINAS (id_maquias, tempo_vida_maquias, data_compra_maquias, data_fim_garantia_maquias)
VALUES (1, 5, '2020-06-15', '2025-06-15');
       (2, 8, '2019-05-10', '2027-05-10');
       (3, 10, '2021-08-25', '2031-08-25');
UPDATE MAQUINAS
SET tempo_vida_maquias = 6
WHERE id_maquias = 1;

DELETE FROM MAQUINAS
WHERE id_maquias = 2;


INSERT INTO EMPREGADOS (id_empregados, nome_empregados, cargo_empregados, salario_empregados, data_admissao_empregados, qualificacoes_empregados, id_end)
VALUES (1, 'João Silva', 'Gerente', 5000.00, '2022-01-15', 'MBA em Gestão', 1);
       (2, 'Maria Oliveira', 'Assistente', 3000.00, '2023-03-10', 'Curso de Excel Avançado', 2);
       (3, 'Carlos Pereira', 'Vendedor', 4000.00, '2021-07-05', 'Curso de Vendas', 3);
UPDATE EMPREGADOS
SET salario_empregados = 5500.00
WHERE id_empregados = 1;

DELETE FROM EMPREGADOS
WHERE id_empregados = 2;

INSERT INTO EMPRESAS (cnpj_empresas, razao_social_empresas, pessoa_contato_empresas, telefone_empresas, id_end)
VALUES ('12345678000195', 'Empresa A Ltda', 'João Silva', '1123456789', 1);
       ('23456789000182', 'Empresa B Ltda', 'Maria Oliveira', '2123456789', 2);
       ('34567890000173', 'Empresa C Ltda', 'Carlos Pereira', '3134567890', 3);
UPDATE EMPRESAS
SET telefone_empresas = '11987654321'
WHERE cnpj_empresas = '12345678000195';

DELETE FROM EMPRESAS
WHERE cnpj_empresas = '34567890000173';

INSERT INTO FORNECEDORES (cnpj_fornecedores, razao_social_fornecedores, pessoa_contato_fornecedores, telefone, id_end)
VALUES ('12345678000195', 'Fornecedor A Ltda', 'Carlos Costa', '11987654321', 1);
       ('23456789000182', 'Fornecedor B Ltda', 'Roberta Lima', '21987654321', 2);
       ('34567890000173', 'Fornecedor C Ltda', 'Felipe Almeida', '31987654321', 3);
UPDATE FORNECEDORES
SET telefone = '11999887766'
WHERE cnpj_fornecedores = '12345678000195';

DELETE FROM FORNECEDORES
WHERE cnpj_fornecedores = '23456789000182';

INSERT INTO ENDERECOS (id_end, numero_end, logradouro_end, complemento_end, CEP_end, bairro_end, cidade_end, UF_end, cod_tip_end)
VALUES (1, '123', 'Rua A', 'Apto 101', '12345-678', 'Centro', 'Cidade X', 'SP', 1);
       (2, '456', 'Rua B', 'Sala 202', '23456-789', 'Bairro Y', 'Cidade Y', 'RJ', 2);
       (3, '789', 'Rua C', NULL, '34567-890', 'Zona Industrial', 'Cidade Z', 'MG', 3);
UPDATE ENDERECOS
SET numero_end = '321'
WHERE id_end = 1;

DELETE FROM ENDERECOS
WHERE id_end = 3;

INSERT INTO ENCOMENDAS (id_encomendas, data_inclusao_encomendas, valor_total_encomendas, valor_desconto_encomendas, valor_liquido_encomendas, forma_pagamento_encomendas_id, quantidade_parcelas_encomendas, cod_cli)
VALUES (1, '2024-10-01', 10000.00, 500.00, 9500.00, 1, 3, 1);
       (2, '2024-10-15', 20000.00, 1000.00, 19000.00, 2, 5, 2);
       (3, '2024-11-01', 5000.00, 200.00, 4800.00, 1, 2, 3);
UPDATE ENCOMENDAS
SET valor_total_encomendas = 12000.00
WHERE id_encomendas = 1;

DELETE FROM ENCOMENDAS
WHERE id_encomendas = 3;

INSERT INTO PRODUTOS (id_produtos, nome_produtos, cor_produtos, dimensoes_produtos, peso_produtos, preco_produtos, tempo_fabricacao_produtos, desenho_produto_produtos, horas_mao_obra_produtos)
VALUES (1, 'Produto A', 'Vermelho', '10x20x30', 1.5, 50.00, 2, 'Desenho do Produto A', 10);
       (2, 'Produto B', 'Azul', '15x25x35', 2.0, 75.00, 3, 'Desenho do Produto B', 12);
       (3, 'Produto C', 'Verde', '20x30x40', 3.0, 100.00, 4, 'Desenho do Produto C', 15);
UPDATE PRODUTOS
SET preco_produtos = 60.00, cor_produtos = 'Amarelo'
WHERE id_produtos = 1;

DELETE FROM PRODUTOS
WHERE id_produtos = 2;

INSERT INTO COMPONENTES (cod_componentes, nome_componentes, quantidade_estoque_componentes, preco_unitario_componentes, unidade_componentes, cod_tipo_componentes, cnpj_fornecedores)
VALUES (1, 'Resistor', 100, 1.50, 'unidade', 1, '12345678000195');
       (2, 'Motor', 50, 250.00, 'peça', 2, '23456789000182');
       (3, 'Cabo Elétrico', 200, 5.00, 'metro', 1, '34567890000173');
UPDATE COMPONENTES
SET preco_unitario_componentes = 1.75
WHERE cod_componentes = 1;
 
DELETE FROM COMPONENTES
WHERE cod_componentes = 2;


























