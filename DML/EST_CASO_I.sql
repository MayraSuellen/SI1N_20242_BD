INSERT INTO FORNECEDORES (FORNEC_COD, FORNEC_NOME, FORNEC_RUA, FORNEC_NUMRUA, FORNEC_BAIRRO, FORNEC_CIDADE, FORNEC_ESTADO, FORNEC_PAIS, FORNEC_CODPOSTAL, FORNEC_TELEFONE, FORNEC_CONTATO)
VALUES ('01','AS','RUA RIO GRANDE DO SUL','36','POA','BONNASERA','NOVA YORK','BRAZIL','183','5529987453385','FULANO'),
       ('02','AB','RUA SANTA CATARINA','25','FLORIPA','PEQUI','LOS ANGELES', 'BRAZIL','624','5582986427153','SICLANO'),
       ('03','AC','RUA PARANA','14','CURITIBA','GIRIPOCA','UTAH','BRAZIL','759','5521945786625','BELTRANO');
UPDATE FORNECEDORES     
SET FORNEC_NUMRUA = '85', 
WHERE FORNEC_COD = '01';

DELETE FROM FORNECEDORES
WHERE FORNEC_COD = '03';

       INSERT INTO FILIAIS (FILIAL_COD, FILIAL_NOME, FILIAL_RUA, FILIAL_NUMRUA, FILIAL_BAIRRO, FILIAL_CIDADE, FILIAL_ESTADO, FILIAL_PAIS, FILIAL_CODPOSTAL, FILIAL_CAPACIDADE 
 )
VALUES ('003','LAPIS','RUA LUAN SANTANA','74','SERTANEJO','MUSICA','MINAS GERAIS', 'BRAZIL', '632','1000') ,
       ('645','CANETA','RUA JORGE E MATEUS','23','SETANEJAO','MUSIC','RIO DE JANEIRO','BRAZIL','258','2000'),
       ('966','BORRACHA','RUA HENRIQUE E JULIANO', '63','SERTANEJINHO','CANCION','SAO PAULO','741','3000');
UPDATE FILIAIS
SET  FILIAL_RUA= 'MATHEUS E KAUN', 
WHERE FILIAL_COD = '656';

DELETE FROM FILIAIS
WHERE FILIAL_COD = '645';

 INSERT INTO PRODUTO (PROD_COD, PROD_NOME, PROD_DESCRICAO, PROD_ESPECTEC, PROD_QUANT, PROD_PRECOUNIT, PROD_UNIDMEDIDA, PROD_ESTOQ_MIN )
VALUES ('852','LAPIS','FABICASTEL', '24 CORES','20','R$25,00','10CM','5') ,
       ('973','CANETA','BIG','COR PRETA','30', 'R$1,50','10CM', '5'),
       ('963','BORRACHA','FABICASTEL','LARANJA E AZUL','40','R%0,50','3CM','5');
UPDATE PRODUTO
SET  PROD_PRECOUNIT = 'R%2,00', 
WHERE PROD_COD = '973';

DELETE FROM PRODUTO
WHERE PROD_COD = '963';

INSERT INTO PEDIDOS (PED_CODIGO, PED_DATA, PED_HORA, PED_PREVISAO, PED_STATUS, PED_FORNECEDOR )
VALUES ('789','20/02/2021','14H', '06/03/2021','CONCLUÍDO','01') ,
       ('456','20/02/2021','15H','06/03/2021','CONCLUÍDO','02',),
       ('123','20/02/2021','16H','06/03/2021','CONCLUÍDO','03');

UPDATE PEDIDOS
SET  PED_HORA = '16', 
WHERE PED_CODIGO = '456';

DELETE FROM PEDIDOS
WHERE PED_CODIGO = '123';

INSERT INTO RECEBIMENTOS (RECEB_DATA, RECEB_HORA, RECEB_QUANT_PROD, RECEB_CONDICAO, RECEB_PEDIDOS  )
VALUES ('02/03/2021','14H','100', 'BOM ESTADO',) ,
       ('01/03/2021','14H','200','BOM ESTADO',),
       ('01/03/2021','15H','150','BOM ESTADO',);

 UPDATE RECEBIMENTOS 
SET  RECEB_QUANT_PROD = '150', 
WHERE RECEB_DATA = '02/03/2021';

DELETE FROM RECEBIMENTOS 
WHERE RECEB_HORA = '15H';

