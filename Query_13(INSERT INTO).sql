/*
INSERT INTO
esto nos permite insertar valores para algunos campos
INSERT INTO libros (x, x, x, x) nos obliga a insertar valores para todos los campos, pero Insert into es mas flexible
Los valores que no especifiquemos se llenaran con NULL
*/

--IDENTITY
--Es un autoincrementable de tipo entero, y normalmente se establece como PK
-- No permite valores nulos, no se puden modificar ni agregar un valor arbitrario
--Comienza en 1 y se incrementa en 1 por defecto
IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

	CREATE TABLE libros(
		id_libro int IDENTITY,
		titulo varchar(30) NOT NULL,
		autor varchar(30),
		precio float,
		editorial varchar(50) NULL,
		canitdad integer,

		PRIMARY KEY (id_libro)
	);

GO

--INSERT INTO libros (titulo, autor) VALUES('Tunel', 'Cohelo', 22.4, 'Filomena',12);  --Erro, solo debemos especificar esos 2
INSERT INTO libros (titulo, autor) VALUES('Fabulas', 'CHABO'); 
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Vencedor esta solo', 'Cohelo', 22.4, NULL, 12);
SELECT * FROM libros;

--INSERT INTO 
INSERT INTO libros VALUES('Vencedor esta solo', 'Cohelo', 22.4, NULL, 12); --Debemos especificar el valor de todos los campos
--INSERT INTO libros VALUES('Cohelo'); --Dara error
SELECT * FROM libros;
