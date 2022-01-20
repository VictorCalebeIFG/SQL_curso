/*
ALUNO: VICTOR CALEBE CAVALCANTE DE MACEDO
FACULDADE: IFG
*/

/* S T O R E D		P R O C E D U R E S*/

/*AS PROCEDURES SÃO COMO AS FUNÇÕES, VOCÊ PODE CHAMALAS QUANDO FOR NECESSÁRIO
ELAS VOA FICAR ARMAZENADAS MESMO DEPOIS QUE VOCÊ FECHAR O BANCO.*/

/*ANTES DE USAR UMA PROCEDURE VOCÊ DEVE MUDAR O DELIMITADOR

POR PADRÃO O DELIMITADOR DO SQL É O ";"
*/

DELIMITER $ /*MUDA O DELIMATADOR PARA "$"*/

CREATE PROCEDURE SOMA_DOIS_NUMEROS(NUM1 INT, NUM2 INT) /*CRIA UM PROCEDIMENTO QUE SOMA DOIS NUMEROS INTEIROS*/
BEGIN												   /*INICIA O PROCEDIMENTO*/
	SELECT NUM1 + NUM2 AS RESULTADO;				   /*MOSTRA A SOMA DE NUM1+NUM2 COMO RESULTADO*/
END 
$												   /*TERMINA O PROCEDIMENTO*/

DELIMITER ;

CALL SOMA_DOIS_NUMEROS(20,30);

/*
+-----------+
| RESULTADO |
+-----------+
|        50 |
+-----------+*/

/*CRIAR UMA PROCEDURE QUE ADICIONA VALORES EM UMA TABELA*/

DELIMITER $
CREATE PROCEDURE INSERT_VALUE(NOME VARCHAR(30),SEXO ENUM("M","F"),EMAIL VARCHAR(50),CPF VARCHAR(15))
BEGIN
		INSERT INTO CLIENTE VALUES(NULL,NOME,SEXO,EMAIL,CPF);
END
$

DELIMITER ;

CALL INSERT_VALUE("VICTOR","M","VICTOR@GMAIL.COM","16161616");

SELECT * FROM CLIENTE WHERE NOME = "VICTOR";
/*
+-----------+--------+------+------------------+----------+
| IDCLIENTE | NOME   | SEXO | EMAIL            | CPF      |
+-----------+--------+------+------------------+----------+
|        11 | VICTOR | M    | VICTOR@GMAIL.COM | 16161616 |
+-----------+--------+------+------------------+----------+
*/

/*ENCONTRANDO O VALOR MÁXIMO, MÍNIMO,MÉDIA*/

SELECT MAX(IDCLIENTE),MIN(IDCLIENTE),AVG(IDCLIENTE) FROM CLIENTE;
/*
+----------------+----------------+----------------+
| MAX(IDCLIENTE) | MIN(IDCLIENTE) | AVG(IDCLIENTE) |
+----------------+----------------+----------------+
|             11 |              1 |         4.3333 |
+----------------+----------------+----------------+
*/
/*TRUNCATE - DIMINUI O NÚMERO DE CASAS DECIMAIS - DIMINUIR O NÚMERO DE CASAS DECIMAIS PARA APENAS 2*/

SELECT MAX(IDCLIENTE),MIN(IDCLIENTE),TRUNCATE(AVG(IDCLIENTE),2) FROM CLIENTE;
/*
+----------------+----------------+----------------------------+
| MAX(IDCLIENTE) | MIN(IDCLIENTE) | TRUNCATE(AVG(IDCLIENTE),2) |
+----------------+----------------+----------------------------+
|             11 |              1 |                       4.33 |
+----------------+----------------+----------------------------+*/

/*S O M A		DE		V A L O R E S	D E		U M A		T A B E L A*/

SELECT SUM(IDCLIENTE) FROM CLIENTE;
/*
+----------------+
| SUM(IDCLIENTE) |
+----------------+
|             26 |
+----------------+
*/
SELECT SEXO,SUM(IDCLIENTE) FROM CLIENTE GROUP BY SEXO;
/*
+------+----------------+
| SEXO | SUM(IDCLIENTE) |
+------+----------------+
| M    |             20 |
| F    |              6 |
+------+----------------+
*/

/*~~~~~~~~~~~~~~~~~~~~ S U B Q U E R Y S ~~~~~~~~~~~~~~~~~~~~*/

/*ENCONTRAR O ID MÁXIMO DA TABELA CLIENTE*/

SELECT NOME,IDCLIENTE FROM CLIENTE WHERE IDCLIENTE = (SELECT MAX(IDCLIENTE)FROM CLIENTE);
/*
+--------+-----------+
| NOME   | IDCLIENTE |
+--------+-----------+
| VICTOR |        11 |
+--------+-----------+*/

/*ENCONTRAR OS VALORES ACIMA DA MÉDIA*/

SELECT NOME,IDCLIENTE FROM CLIENTE WHERE IDCLIENTE > (SELECT AVG(IDCLIENTE)FROM CLIENTE);
/*
+---------+-----------+
| NOME    | IDCLIENTE |
+---------+-----------+
| RODRIGO |         5 |
| VICTOR  |        11 |
+---------+-----------+
*/

/*DIGAMOS QUE SEJA NECESSÁRIO SOMAR OS ELEMENTOS DA MESMA LINHA*/

CREATE TABLE SOMALINHA(
	COLUNA_1 INT(11),
	COLUNA_2 INT(11),
	COLUNA_3 INT(11));

INSERT INTO SOMALINHA VALUES(1,1,1);
INSERT INTO SOMALINHA VALUES(2,2,2);
INSERT INTO SOMALINHA VALUES(3,3,3);

SELECT * FROM SOMALINHA;
/*
+----------+----------+----------+
| COLUNA_1 | COLUNA_2 | COLUNA_3 |
+----------+----------+----------+
|        1 |        1 |        1 |
|        2 |        2 |        2 |
|        3 |        3 |        3 |
+----------+----------+----------+*/

SELECT COLUNA_1,COLUNA_2,COLUNA_3,(COLUNA_1+COLUNA_2+COLUNA_3)AS "SOMA" FROM SOMALINHA;
/*
+----------+----------+----------+------+
| COLUNA_1 | COLUNA_2 | COLUNA_3 | SOMA |
+----------+----------+----------+------+
|        1 |        1 |        1 |    3 |
|        2 |        2 |        2 |    6 |
|        3 |        3 |        3 |    9 |
+----------+----------+----------+------+*/
SELECT COLUNA_1,COLUNA_2,COLUNA_3,((COLUNA_1+COLUNA_2+COLUNA_3)/3) AS "MÉDIA" FROM SOMALINHA;
/*
+----------+----------+----------+--------+
| COLUNA_1 | COLUNA_2 | COLUNA_3 | MÉDIA  |
+----------+----------+----------+--------+
|        1 |        1 |        1 | 1.0000 |
|        2 |        2 |        2 | 2.0000 |
|        3 |        3 |        3 | 3.0000 |
+----------+----------+----------+--------+*/