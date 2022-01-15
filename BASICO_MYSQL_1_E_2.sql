/*
ALUNO: VICTOR CALEBE CAVALCANTE DE MACEDO
FACULDADE: IFG

█▄▄ ▄▀█ █▀ █ █▀▀ █▀█ ▄▄ ▄█
█▄█ █▀█ ▄█ █ █▄▄ █▄█ ░░ ░█

- CREATE DATABASE
- USE 
- SHOW
- DESC
- INSERT INTO
- SELECT FROM
- LIKE
- AND, OR
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/
Modelagem Básica - Entidade = Tabela */

/*MySql = SGBD (sistema de gerenciamento de dados)*/

/*CRIANDO BANCO DE DADOS*/
CREATE DATABASE PROJECT;
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/* ABRINDO BANCO DE DADOS*/
USE PROJECT
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/* CRIANDO TABELA NO BANCO DE DADOS*/
CREATE TABLE CLIENTE(
	NOME VARCHAR(30),
	SEXO CHAR(1),
	EMAIL VARCHAR(30),
	CPF INT(11),
	TELEFONE VARCHAR(30),
	ENDERECO VARCHAR(100)
);
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/*MOSTRANDO AS TABELAS NA DATABASE*/
SHOW TABLES;
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/* MOSTRANDO OS CAMPOS DE UMA TABELA*/
DESC CLIENTE;
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/* Adicionando valores a tabela*/
/*Primeira Forma - Com os atributos como parametro */
INSERT INTO CLIENTE(NOME,SEXO,EMAIL,CPF,TELEFONE,ENDERECO) VALUES(
	"ROBERTO","M","ROBERTO@GMAIL.COM",1234567920,"23132131","GO");

INSERT INTO CLIENTE(NOME,SEXO,EMAIL,CPF,TELEFONE,ENDERECO) VALUES(
	"MARIA","F","MARIA@GMAIL.COM",1434567920,"28832131","BAIRRO1-GO");

INSERT INTO CLIENTE(NOME,SEXO,EMAIL,CPF,TELEFONE,ENDERECO) VALUES(
	"GABRIELA","F","GRABRIELA@GMAIL.COM",1774567920,"28877131","BAIRRO5-GO");
	
INSERT INTO CLIENTE(NOME,SEXO,EMAIL,CPF,TELEFONE,ENDERECO) VALUES(
	"GOKU","M","GOKU@GMAIL.COM",1888567920,"55877131","BAIRRO7-SC");

INSERT INTO CLIENTE(NOME,SEXO,EMAIL,CPF,TELEFONE,ENDERECO) VALUES(
	"NARUTO","M","NARUTO@GMAIL.COM",188856777,"55877777","BAIRRO9-MT");	
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/* Segunda Forma - Sem os atributos como parametro */
INSERT INTO CLIENTE VALUES("RODRIGO","M","RODRIGO@GMAIL.COM",1245678910,
							"12121212121","SC");
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/*MOSTRANDO TABELA CLIENTE TODA (NÃO RECOMENDADO EM GRANDES BASES DE DADOS, UTILIZADO SÓ PRA ESTUDO)*/
SELECT * FROM CLIENTE;
/*
+----------+------+---------------------+------------+-------------+------------+
| NOME     | SEXO | EMAIL               | CPF        | TELEFONE    | ENDERECO   |
+----------+------+---------------------+------------+-------------+------------+
| ROBERTO  | M    | ROBERTO@GMAIL.COM   | 1234567920 | 23132131    | GO         |
| RODRIGO  | M    | RODRIGO@GMAIL.COM   | 1245678910 | 12121212121 | SC         |
| MARIA    | F    | MARIA@GMAIL.COM     | 1434567920 | 28832131    | BAIRRO1-GO |
| GABRIELA | F    | GRABRIELA@GMAIL.COM | 1774567920 | 28877131    | BAIRRO5-GO |
| GOKU     | M    | GOKU@GMAIL.COM      | 1888567920 | 55877131    | BAIRRO7-SC |
| NARUTO   | M    | NARUTO@GMAIL.COM    |  188856777 | 55877777    | BAIRRO9-MT |
+----------+------+---------------------+------------+-------------+------------+*/
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/* MOSTRAR DADOS USANDO SELECT*/
SELECT NOME,SEXO,EMAIL FROM CLIENTE;
/*
+----------+------+---------------------+
| NOME     | SEXO | EMAIL               |
+----------+------+---------------------+
| ROBERTO  | M    | ROBERTO@GMAIL.COM   |
| RODRIGO  | M    | RODRIGO@GMAIL.COM   |
| MARIA    | F    | MARIA@GMAIL.COM     |
| GABRIELA | F    | GRABRIELA@GMAIL.COM |
| GOKU     | M    | GOKU@GMAIL.COM      |
| NARUTO   | M    | NARUTO@GMAIL.COM    |
+----------+------+---------------------+*/
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/*DIGAMOS QUE EU QUEIRA MUDAR A COLUNA NOME PARA COLUNA CLIENTE (SOMENTE PARA VIZUALIZAR, OU SEJA A BASE DE DADOS PERMANECERA A MESMA)

DEVEMOS USAR UM "APELIDO" NO SQL É CHAMADA DE ALIAS*/

SELECT NOME AS CLIENTE, SEXO,EMAIL FROM CLIENTE;
/*
+----------+------+---------------------+
| CLIENTE  | SEXO | EMAIL               |
+----------+------+---------------------+
| ROBERTO  | M    | ROBERTO@GMAIL.COM   |
| RODRIGO  | M    | RODRIGO@GMAIL.COM   |
| MARIA    | F    | MARIA@GMAIL.COM     |
| GABRIELA | F    | GRABRIELA@GMAIL.COM |
| GOKU     | M    | GOKU@GMAIL.COM      |
| NARUTO   | M    | NARUTO@GMAIL.COM    |
+----------+------+---------------------+

PERCEBA QUE A TABELA É A MESMA SÓ MUDOU DE "NOME" PARA "CLIENTE" A PRIMEIRA COLUNA*/
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/*APLICANDO FILTROS - DIGAMOS QUE EU QUEIRA SELECIONAR SOMENTE OS REGISTORS COM SEXO FEMININO*/

SELECT NOME,SEXO,EMAIL FROM CLIENTE WHERE SEXO = "F";
/*
+----------+------+---------------------+
| NOME     | SEXO | EMAIL               |
+----------+------+---------------------+
| MARIA    | F    | MARIA@GMAIL.COM     |
| GABRIELA | F    | GRABRIELA@GMAIL.COM |
+----------+------+---------------------+
*/
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/*DIGAMOS QUE EU QUEIRA SELECIONAR OS REGISTOR EM QUE A COLUNA EDEREÇOS TERMINE EM GO
O CARACTER PORCENTAGEM "%" SIGNIFICA QUALQUER COISA E SUBSTITUIR A IGUALDADE "=" PELO COMANDO "LIKE"*/
SELECT NOME,SEXO,EMAIL,ENDERECO FROM CLIENTE WHERE ENDERECO LIKE "%GO";
/*
+----------+------+---------------------+------------+
| NOME     | SEXO | EMAIL               | ENDERECO   |
+----------+------+---------------------+------------+
| ROBERTO  | M    | ROBERTO@GMAIL.COM   | GO         |
| MARIA    | F    | MARIA@GMAIL.COM     | BAIRRO1-GO |
| GABRIELA | F    | GRABRIELA@GMAIL.COM | BAIRRO5-GO |
+----------+------+---------------------+------------+
*/
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/*USANDO MAIS DE UM FILTRO*/
SELECT NOME,SEXO,EMAIL, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE "%GO" AND SEXO = "F";
/*
+----------+------+---------------------+------------+
| NOME     | SEXO | EMAIL               | ENDERECO   |
+----------+------+---------------------+------------+
| MARIA    | F    | MARIA@GMAIL.COM     | BAIRRO1-GO |
| GABRIELA | F    | GRABRIELA@GMAIL.COM | BAIRRO5-GO |
+----------+------+---------------------+------------+
*/

/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/
/*USANDO LÓGICA OPERACIONAL CASADA*/
/*SELECIONAR OS HOMENS QUE SÃO DE GO OU MT*/
SELECT NOME,SEXO,ENDERECO FROM CLIENTE WHERE SEXO = "M" AND (ENDERECO LIKE "%GO" OR ENDERECO LIKE "%SC");
/*
+---------+------+------------+
| NOME    | SEXO | ENDERECO   |
+---------+------+------------+
| ROBERTO | M    | GO         |
| RODRIGO | M    | SC         |
| GOKU    | M    | BAIRRO7-SC |
+---------+------+------------+
*/
/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ I M P O R T A N T E ! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

PERFORMACE:
	DIGAMOS QUE QUEREMOS VERIFICAR SE UM REGISTRO É "HOMEM" OU É DE "GO", DESSA FORMA TERIAMOS QUE VERIFICAR
(SEXO = HOMEM OR ENDERECO = GO) OU (ENDERECO = GO OR SEXO = HOMEM), MAS QUAL DOS DOIS ESCOLHER ? BEM, DIGAMOS QUE 70%
DOS REGISTROS SÃO DE HOMENS E 50% DOS REGISTROS SÃO DE GOIANIA, O MELHOR A SE FAZER EM RELAÇÃO A PERFORMACE É COLOCAR,
NO CASO DA OPERAÇÃO "OR", O VALOR COM MAIOR CHANCE DE OCORRER, EVITANDO TER QUE VERIFICAR A SEGUNDA CONDIÇÃO, FICANDO A 
PRIMEIRA OPÇÃO A MAIS EFICAZ -> (SEXO = HOMEM OR ENDERECO = GO).

	DIGAMOS QUE AGORA QUEREMOS VERIFICAR SE UMA PESSOA É "HOMEM" E É DE "GOIANIA", O MELHOR A SE FAZER É VERIFICAR
PRIMEIRO A PROPOSIÇÃO COM MENOR CHANCE DE OCORRER, LOGO COMO "GOIANIA" TEM MENOR CHANCE DE OCORRER DEVE SER VERIFICADA
PRIMEIRO, FICANDO (ENDERECO = GO AND SEXO = HOMEM)


*/
/*
█▄▄ ▄▀█ █▀ █ █▀▀ █▀█ ▄▄ ▀█
█▄█ █▀█ ▄█ █ █▄▄ █▄█ ░░ █▄

- COUNT
- GROUP BY
- ORDER BY 1
- UPDATE
- DELETE
▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/*MOSTRANDO O NÚMERO DE REGISTROS*/
SELECT COUNT(*) FROM CLIENTE;
/*
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+*
PARA TIRAR O COUNT(*) NA TABELA BASTA DAR UM APELIDO(ALIAS)/
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

SELECT COUNT(*) AS "N_REGISTROS" FROM CLIENTE;
/*
+-------------+
| N_REGISTROS |
+-------------+
|           6 |
+-------------+*/
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/*AGRUPAMENTO E COUNT - CONTAR AGRUPANDO*/

SELECT SEXO,COUNT(*) FROM CLIENTE GROUP BY SEXO;
/*
+------+----------+
| SEXO | COUNT(*) |
+------+----------+
| M    |        4 |
| F    |        2 |
+------+----------+*/
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/*DIGAMOS QUE VOCÊ QUEIRA ORDENAR A TABELA DE FORMA CRESCENTE:*/
SELECT SEXO,COUNT(*) FROM CLIENTE GROUP BY SEXO ORDER BY 1;
/*
+------+----------+
| SEXO | COUNT(*) |
+------+----------+
| F    |        2 |
| M    |        4 |
+------+----------+*/
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/*DIGAMOS QUE EXITAM ALGUNS CAMPOS COM E-MAIL NULO NO SEU BANCO DE DADOS:*/
USE PROJECT;

INSERT INTO CLIENTE(NOME,SEXO,EMAIL,CPF,TELEFONE,ENDERECO)
	VALUES("JOAO","M",NULL,102100,"2122121","BAIRRO9-MT");

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ F O R M A - E R R A D A ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	
	SELECT NOME,EMAIL FROM CLIENTE WHERE EMAIL = NULL;
	
	VAI DAR ERRO, NÃO VAI ENCONTRAR NADA A FORMA CORRETA É:

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ F O R M A - C O R R E T A ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
*/

SELECT NOME,EMAIL FROM CLIENTE WHERE EMAIL IS NULL;
/*
+------+-------+
| NOME | EMAIL |
+------+-------+
| JOAO | NULL  |
+------+-------+*/
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/*- - - - ~ ~ ~ RETORNAR ELEMENTOS NÃO NULOS - - - - ~ ~ ~ */
SELECT NOME,EMAIL FROM CLIENTE WHERE EMAIL IS NOT NULL;
/*
+----------+---------------------+
| NOME     | EMAIL               |
+----------+---------------------+
| ROBERTO  | ROBERTO@GMAIL.COM   |
| RODRIGO  | RODRIGO@GMAIL.COM   |
| MARIA    | MARIA@GMAIL.COM     |
| GABRIELA | GRABRIELA@GMAIL.COM |
| GOKU     | GOKU@GMAIL.COM      |
| NARUTO   | NARUTO@GMAIL.COM    |
+----------+---------------------+*/
/*▄▄▄▄ ▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄▄ ▄▄▄▄*/

/* - - - ~ ~ ~ ~ CONCERTANDO O EMAIL NULL - - - ~ ~ ~ ~ */
UPDATE CLIENTE SET EMAIL = "JOAO@GMAIL.COM" WHERE NOME = "JOAO";

SELECT NOME,EMAIL FROM CLIENTE WHERE NOME = "JOAO"; 
/*
+------+----------------+
| NOME | EMAIL          |
+------+----------------+
| JOAO | JOAO@GMAIL.COM |
+------+----------------+*/
/*▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄*/

/*- - - - ~~~DELETANDO UM REGISTRO DA TABELA~~~~ - - - -*/

DELETE FROM CLIENTE WHERE NOME = "ROBERTO";

SELECT NOME,EMAIL FROM CLIENTE;

/*
+----------+---------------------+
| NOME     | EMAIL               |
+----------+---------------------+
| RODRIGO  | RODRIGO@GMAIL.COM   |
| MARIA    | MARIA@GMAIL.COM     |
| GABRIELA | GRABRIELA@GMAIL.COM |
| GOKU     | GOKU@GMAIL.COM      |
| NARUTO   | NARUTO@GMAIL.COM    |
| JOAO     | JOAO@GMAIL.COM      |
+----------+---------------------+*/
/*texto asc: https://fsymbols.com/generators/carty/*/