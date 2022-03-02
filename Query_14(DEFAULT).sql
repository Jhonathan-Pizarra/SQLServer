/*
DEFAULT
Valores por defecto son valores quemados que queremos presentar para ciertos campos d
donde la informacion se podría presentar como null

Si al ingregar un valor omitimos un campo que tiene DEFAULT ese campo se llenara con ese valor
*/

IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

	CREATE TABLE libros(
		id_libro int IDENTITY,
		titulo varchar(30) NOT NULL DEFAULT 'Book',
		autor varchar(30) NULL,
		precio float,
		editorial varchar(50) DEFAULT 'Icesa',
		canitdad integer DEFAULT 0,

		PRIMARY KEY (id_libro)
	);

GO

--INSERT INTO libros (titulo, autor) VALUES('Tunel', 'Cohelo', 22.4, 'Filomena',12);  --Erro, solo debemos especificar esos 2
INSERT INTO libros (titulo, autor) VALUES('Fabulas', 'CHABO'); --Los demas campos se setean a Default o NULL si no tiene default
INSERT INTO libros VALUES('Vencedor esta solo', 'Cohelo', 22.4, NULL, 12); --Debemos especificar el valor de todos los campos para compeltar el registro
SELECT * FROM libros;
--EXEC sp_columns libros;

--INSERT DEFAULT 
INSERT INTO libros VALUES(DEFAULT, 'Cohelo', 22.4, DEFAULT, DEFAULT); --Se establecen los valores quemados en la insercion
SELECT * FROM libros;

--EXEC sp_columns libros;