
INSERT INTO INSTRUTORES (ID_instrutor, Nome_instrutor, Especialidade_instrutor) 
VALUES (1, 'Neymar Jr', 'Musculação');
       (2, 'Gisele Bündchen', 'Yoga');
       (3, 'Adriana Lima', 'Pilates');
UPDATE INSTRUTORES 
SET Especialidade_instrutor = 'Treinamento Funcional' 
WHERE ID_instrutor = 1;

DELETE FROM INSTRUTORES 
WHERE ID_instrutor = 3;


INSERT INTO MODALIDADES (ID_modalidade, Nome_modalidade, Descricao_modalidade) 
VALUES (1, 'Musculação', 'Treinamento de força com pesos');
       (2, 'Yoga', 'Prática de posturas físicas e técnicas de respiração');
       (3, 'Pilates', 'Exercícios focados no fortalecimento do core');
UPDATE MODALIDADES 
SET Descricao_modalidade = 'Exercícios de alongamento e relaxamento' 
WHERE ID_modalidade = 2;

DELETE FROM MODALIDADES 
WHERE ID_modalidade = 3;


INSERT INTO ALUNO (ID_aluno, Nome_aluno, CPF_aluno, Data_Nascimento_aluno, rua_aluno, numrua_aluno, bairro_aluno, cidade_aluno, uf_aluno, pais_aluno, telefone_aluno, ID_modalidade) 
VALUES (1, 'Maxswel Oliveira', '12345678901', '1995-06-15', 'Rua perreira', 101, 'Centro', 'São Paulo', 'SP', 'Brasil', '11987654321', 1);
       (2, 'Beatriz Campos', '98765432100', '1990-11-23', 'Rua das flores', 102, 'Jardim das Rosas', 'Rio de Janeiro', 'RJ', 'Brasil', '21987654321', 2);
       (3, 'Mateus Budge', '12345987654', '1992-03-10', 'Rua Doom Pedro', 103, 'Vila Nova', 'Belo Horizonte', 'MG', 'Brasil', '31987654321', 1);

UPDATE ALUNO 
SET Nome_aluno = 'Mavi Budge' 
WHERE ID_aluno = 1;

DELETE FROM ALUNO 
WHERE ID_aluno = 2;
 
INSERT INTO PLANOS_TREINAMENTOS (ID_plano, Descricao_plano, Data_Criacao_plano, Data_Atualizacao_plano, ID_aluno, ID_instrutor) 
VALUES (1, 'Plano de musculação inicial', '2024-01-15', NULL, 1, 1);
       (2, 'Plano de yoga para iniciantes', '2024-02-20', NULL, 2, 2);
       (3, 'Plano de pilates avançado', '2024-03-05', NULL, 3, 3);

UPDATE PLANOS_TREINAMENTOS 
SET Descricao_plano = 'Plano de musculação avançado' 
WHERE ID_plano = 1;

DELETE FROM PLANOS_TREINAMENTOS 
WHERE ID_plano = 2;


INSERT INTO AULAS (ID_aula, ID_modalidade, ID_instrutor, Horario_aula, Capacidade_aula, Lotacao_atual_aula) 
VALUES (1, 1, 1, '08:00:00', 20, 10);
       (2, 2, 2, '10:00:00', 15, 5);
       (3, 1, 1, '14:00:00', 25, 20);

UPDATE AULAS 
SET Horario_aula = '09:00:00', Capacidade_aula = 25 
WHERE ID_aula = 1;

DELETE FROM AULAS 
WHERE ID_aula = 3;

INSERT INTO PAGAMENTOS (ID_pagamento, Data_pagamento, Valor_pagamento, Status_pagamento, ID_aluno) 
VALUES (1, '2024-01-10', 150.00, 'Pago', 1);
       (2, '2024-02-15', 120.00, 'Pendente', 2);
       (3, '2024-03-20', 200.00, 'Pendente', 3);

UPDATE PAGAMENTOS 
SET Status_pagamento = 'Pago' 
WHERE ID_pagamento = 2;

DELETE FROM PAGAMENTOS 
WHERE ID_pagamento = 3;

INSERT INTO MATRICULAS (ID_aluno, ID_modalidade) 
VALUES (1, 1);
       (2, 2);
       (3, 1);

UPDATE MATRICULAS 
SET ID_modalidade = 2 
WHERE ID_aluno = 3;

DELETE FROM MATRICULAS 
WHERE ID_aluno = 2 AND ID_modalidade = 2;

