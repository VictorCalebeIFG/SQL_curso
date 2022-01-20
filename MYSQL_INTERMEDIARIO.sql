/*
ALUNO: VICTOR CALEBE CAVALCANTE DE MACEDO
FACULDADE: IFG

				I N T E R M E D I A R I O
	
	- ATRIBUTOS OBRIGATÓRIOS 	 - (NOT NULL)
	- FOREIGN KEY			 - (ATRIBUTO QUE INTERLIGA TABELAS DIFERENTES)
	- ATRIBUTO UNIQUE		 - (NÃO PERMITE VALORES REPETIDOS)
	- INNER JOIN 			 - (COMANDO QUE JUNTA DUAS TABELAS LADO A LADO)
	- ALTER TABLE 			 - (COMANDO QUE ALTERA UM VALOR DA TABELA)
	- IN 				 - (COMANDO QUE PERMITE MAIS DE UMA IGUALDADE)
	- ORDER BY 			 - (COMANDO QUE ORDENA A TABELA DE ACORDO COM UMA DAS COLUNAS)
	
	- MODELO : https://github.com/VictorCalebeIFG/SQL_curso/blob/main/MODELO_INTERMEDIARIO.png
*/

CREATE DATABASE COMERCIO;

USE COMERCIO;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM("M","F") NOT NULL,
	EMAIL VARCHAR(50) UNIQUE,
	CPF VARCHAR(15) UNIQUE
					);

CREATE TABLE ENDERECO(
	IDENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	CIDADE CHAR(2) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	ID_CLIENTE INT UNIQUE,
	FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)/*A FOREIGN KEY É O ATRIBUTO ID_CLIENTE, QUE É UNIQUE POIS
	CADA CLIENTE POSSUI UM ÚNICO ENDEREÇO, O ATRIBUTO ID_CLIENTE É UMA REFERENCIA AO ATRIBUTO IDCLIENTE QUE ESTÁ NA
	TALBELA CLIENTE.*/
					);

CREATE TABLE TELEFONE(
	IDTELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM("RES","CEL") NOT NULL,
	NUMERO VARCHAR(30) NOT NULL,
	ID_CLIENTE INT,/*COMO UM MESMO CLIENTE PODE TER MAIS DE UM TELEFONE A FOREIGN KEY DA TABELA TELEFONE NÃO É UNIQUE.*/
	FOREIGN KEY(ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
					);

/*INSERINDO NA TABELA CLIENTE*/
INSERT INTO CLIENTE VALUES(NULL,"JOSE","M","JOSE@GMAIL.COM","12121212");		/*CLIENTE ID = 1 */
INSERT INTO CLIENTE VALUES(NULL,"MARIA","F","MARIA@GMAIL.COM","1313131313");		/*CLIENTE ID = 2 */
INSERT INTO CLIENTE VALUES(NULL,"CALEBE","M","CALEBE@GMAIL.COM","1414141414");		/*CLIENTE ID = 3 */
INSERT INTO CLIENTE VALUES(NULL,"RUTE","F","RUTE@GMAIL.COM","151515151515");		/*CLIENTE ID = 4 */
INSERT INTO CLIENTE VALUES(NULL,"RODRIGO","M","RODRIGO@GMAIL.COM","161616161616");	/*CLIENTE ID = 5 */

/*INSERINDO NA TABELA ENDEREÇO*/
INSERT INTO ENDERECO VALUES(NULL,"GO","BAIRRO-1",1);					/*ENDERECO DO CLIENTE 1*/
INSERT INTO ENDERECO VALUES(NULL,"SC","BAIRRO-2",2);					/*ENDERECO DO CLIENTE 2*/
INSERT INTO ENDERECO VALUES(NULL,"MT","BAIRRO-3",3);					/*ENDERECO DO CLIENTE 3*/
INSERT INTO ENDERECO VALUES(NULL,"GO","BAIRRO-4",4);					/*ENDERECO DO CLIENTE 4*/
INSERT INTO ENDERECO VALUES(NULL,"SC","BAIRRO-5",5);					/*ENDERECO DO CLIENTE 5*/

/*INSERINDO NA TABELA TELEFONE*/
INSERT INTO TELEFONE VALUES(NULL,"RES","121212",1);					/*TELEFONE RESIDENCIAL DO CLIENTE 1*/
INSERT INTO TELEFONE VALUES(NULL,"CEL","131313",1);					/*TELEFONE CELULAR DO CLIENTE 1*/
INSERT INTO TELEFONE VALUES(NULL,"CEL","141414",2);					/*TELEFONE CELULAR DO CLIENTE 2*/
/*O TELEFONE NÃO É OBRIGATÓRIO, LOGO NEM TODOS OS CLIENTES POSSUEM UM REGISTRADO*/

/*MOSTRANDO OS DADOS*/
SELECT * FROM CLIENTE;
/*
+-----------+---------+------+-------------------+--------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF          |
+-----------+---------+------+-------------------+--------------+
|         1 | JOSE    | M    | JOSE@GMAIL.COM    | 12121212     |
|         2 | MARIA   | F    | MARIA@GMAIL.COM   | 1313131313   |
|         3 | CALEBE  | M    | CALEBE@GMAIL.COM  | 1414141414   |
|         4 | RUTE    | F    | RUTE@GMAIL.COM    | 151515151515 |
|         5 | RODRIGO | M    | RODRIGO@GMAIL.COM | 161616161616 |
+-----------+---------+------+-------------------+--------------+
*/
SELECT * FROM ENDERECO;
/*
+------------+------+--------+------------+
| IDTELEFONE | TIPO | NUMERO | ID_CLIENTE |
+------------+------+--------+------------+
|          1 | RES  | 121212 |          1 |
|          2 | CEL  | 131313 |          1 |
|          3 | CEL  | 141414 |          2 |
+------------+------+--------+------------+
*/
SELECT * FROM TELEFONE;
/*
+------------+--------+----------+------------+
| IDENDERECO | CIDADE | BAIRRO   | ID_CLIENTE |
+------------+--------+----------+------------+
|          1 | GO     | BAIRRO-1 |          1 |
|          2 | SC     | BAIRRO-2 |          2 |
|          3 | MT     | BAIRRO-3 |          3 |
|          4 | GO     | BAIRRO-4 |          4 |
|          5 | SC     | BAIRRO-5 |          5 |
+------------+--------+----------+------------+
*/

/*~~~~~~~~~~~~~~~~~~~~~~~~~INNER JOIN~~~~~~~~~~~~~~~~~~~~~~~~~*/
SELECT NOME,SEXO,BAIRRO,CIDADE FROM CLIENTE INNER JOIN ENDERECO ON IDCLIENTE = ID_CLIENTE;
/*
+---------+------+----------+--------+
| nome    | sexo | bairro   | cidade |
+---------+------+----------+--------+
| JOSE    | M    | BAIRRO-1 | GO     |
| MARIA   | F    | BAIRRO-2 | SC     |
| CALEBE  | M    | BAIRRO-3 | MT     |
| RUTE    | F    | BAIRRO-4 | GO     |
| RODRIGO | M    | BAIRRO-5 | SC     |
+---------+------+----------+--------+*/

/*~~~~~~~~~~~~~~~~~~~~~ADICIONANDO FILTROS~~~~~~~~~~~~~~~~~~~~~*/
SELECT NOME,CIDADE FROM CLIENTE INNER JOIN ENDERECO ON IDCLIENTE = ID_CLIENTE WHERE CIDADE = "GO";
/*
+------+--------+
| NOME | CIDADE |
+------+--------+
| JOSE | GO     |
| RUTE | GO     |
+------+--------+*/

/*~~~~~~~~~~~~~~~~~~~~~~~~~INNER JOIN~~~~~~~~~~~~~~~~~~~~~~~~~*/
SELECT NOME,SEXO,NUMERO,TIPO FROM CLIENTE INNER JOIN TELEFONE ON IDCLIENTE = ID_CLIENTE WHERE SEXO ="F";
/*
+-------+------+--------+------+
| NOME  | SEXO | NUMERO | TIPO |
+-------+------+--------+------+
| MARIA | F    | 141414 | CEL  |
+-------+------+--------+------+
*/ /*PERCEBA QUE ELE SÓ MOSTRA AS PESSOAS QUE POSSUEM TELEFONE,
AS QUE NÃO POSSUEM NÃO É MOSTRADO*/

/*~~~~~~~~~~~~INNER JOIN ENTRE MAIS DE UMA TABELA~~~~~~~~~~~~~*/
SELECT CLIENTE.NOME,TELEFONE.NUMERO,ENDERECO.CIDADE
FROM CLIENTE INNER JOIN TELEFONE ON IDCLIENTE = TELEFONE.ID_CLIENTE
INNER JOIN ENDERECO ON IDCLIENTE = ENDERECO.ID_CLIENTE;
/*
+-------+--------+--------+
| NOME  | NUMERO | CIDADE |
+-------+--------+--------+
| JOSE  | 121212 | GO     |
| JOSE  | 131313 | GO     |
| MARIA | 141414 | SC     |
+-------+--------+--------+
QUANDO TEMOS ATRIBUTOS COM NOMES IGUAIS TEMOS QUE INDICAR DE QUAL TABELA
O ATRIBUTO PERTENCE.
*/

/*~~~~~~~~~~~~INNER JOIN ENTRE MAIS DE UMA TABELA~~~~~~~~~~~~~*/
/*OUTRA FORMA, A MAIS UTILIZADA É ATRAVÉS DE UM APELIDO*/
SELECT C.NOME, T.NUMERO, E.CIDADE FROM CLIENTE C
INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE;
/*
+-------+--------+--------+
| NOME  | NUMERO | CIDADE |
+-------+--------+--------+
| JOSE  | 121212 | GO     |
| JOSE  | 131313 | GO     |
| MARIA | 141414 | SC     |
+-------+--------+--------+
*/

/*COMANDOS DE DDL - DATA DEFINITION LENGUAGE

-	DIGAMOS QUE EU TENHA A INTENSÃO DE MODIFICAR UM ATRITUBO DE ALGUMA TABELA,
UMA BOA FORMA DE FAZER ISSO É ATRAVÉS DO COMANDO ALTER TABLE
-	VAMOS MUDAR O ATRIBUTO NUMERO DA TABELA TELEFONE PARA UM VARCHAR MAIOR,
NO MOMENTO ELE TEM 30 CASAS E É DO TIPO OBRIGATÓRIO(NOT NULL)*/

/*ANTES DE FAZER ISSO VAMOS DA UM DESCRIBE NA TABELA TELEFONE:*/
DESCRIBE TELEFONE;
/*
+------------+-------------------+------+-----+---------+----------------+
| Field      | Type              | Null | Key | Default | Extra          |
+------------+-------------------+------+-----+---------+----------------+
| IDTELEFONE | int               | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(30)       | NO   |     | NULL    |                |
| ID_CLIENTE | int               | YES  | MUL | NULL    |                |
+------------+-------------------+------+-----+---------+----------------+*/
ALTER TABLE TELEFONE CHANGE NUMERO NUMERO VARCHAR(15) NOT NULL;
/*
+------------+-------------------+------+-----+---------+----------------+
| Field      | Type              | Null | Key | Default | Extra          |
+------------+-------------------+------+-----+---------+----------------+
| IDTELEFONE | int               | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(15)       | NO   |     | NULL    |                |
| ID_CLIENTE | int               | YES  | MUL | NULL    |                |
+------------+-------------------+------+-----+---------+----------------+
*/
/*COMO DELETER UMA COLUNA A UMA TABELA*/
ALTER TABLE CLIENTE DROP COLUMN CPF;

/*COMO ADICIONAR UMA COLUNA A UMA TABELA*/
ALTER TABLE CLIENTE ADD COLUMN TRABALHO VARCHAR(30);

/*ADICIONANDO UMA COLUNA EM UMA ORDEM ESPECÍFICA*/
ALTER TABLE CLIENTE ADD COLUMN TRABALHO VARCHAR(30) AFTER SEXO;
/*CASO NÃO SEJA INDICADO A POSIÇÃO ONDE DEVE FICAR A COLUNA
ELA SERÁ ADICIONADA NO FINAL DA TABELA*/

/*CLAUSULA "IN" PERMITE FAZER VÁRIAS IGUALDADES DE FORMA MAIS EFICIENTE*/
SELECT IDCLIENTE,NOME FROM CLIENTE WHERE IDCLIENTE IN(1,3,5);
/*
+-----------+---------+
| IDCLIENTE | NOME    |
+-----------+---------+
|         1 | JOSE    |
|         3 | CALEBE  |
|         5 | RODRIGO |
+-----------+---------+
*/

/*VIEWS - GUARDA UMA QUERY ESPECÍFICA*/

CREATE VIEW V_RELATORIO AS
SELECT C.NOME,T.NUMERO,E.CIDADE FROM CLIENTE C
INNER JOIN TELEFONE T ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E ON C.IDCLIENTE = E.ID_CLIENTE;

SELECT * FROM V_REALTORIO;
/*
+-------+--------+--------+
| NOME  | NUMERO | CIDADE |
+-------+--------+--------+
| JOSE  | 131313 | GO     |
| JOSE  | 121212 | GO     |
| MARIA | 141414 | SC     |
+-------+--------+--------+
*/

/*ORDENAR BASEADO EM UMA DAS COLUNAS DE FORMA ASCENDETE*/

SELECT * FROM CLIENTE ORDER BY CPF ASC;
/*
+-----------+---------+------+-------------------+--------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF          |
+-----------+---------+------+-------------------+--------------+
|         1 | JOSE    | M    | JOSE@GMAIL.COM    | 12121212     |
|         2 | MARIA   | F    | MARIA@GMAIL.COM   | 1313131313   |
|         3 | CALEBE  | M    | CALEBE@GMAIL.COM  | 1414141414   |
|         4 | RUTE    | F    | RUTE@GMAIL.COM    | 151515151515 |
|         5 | RODRIGO | M    | RODRIGO@GMAIL.COM | 161616161616 |
+-----------+---------+------+-------------------+--------------+*/

/*ORDENAR BASEADO EM UMA DAS COLUNAS DE FORMA DESCENDETE*/
SELECT * FROM CLIENTE ORDER BY CPF DESC;
/*
+-----------+---------+------+-------------------+--------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF          |
+-----------+---------+------+-------------------+--------------+
|         5 | RODRIGO | M    | RODRIGO@GMAIL.COM | 161616161616 |
|         4 | RUTE    | F    | RUTE@GMAIL.COM    | 151515151515 |
|         3 | CALEBE  | M    | CALEBE@GMAIL.COM  | 1414141414   |
|         2 | MARIA   | F    | MARIA@GMAIL.COM   | 1313131313   |
|         1 | JOSE    | M    | JOSE@GMAIL.COM    | 12121212     |
+-----------+---------+------+-------------------+--------------+*/

