--NULL Y NOT NULL
--Significa vacio o inexistente
--BORRAR REGISTROS
IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

	CREATE TABLE libros(
		titulo varchar(30) NOT NULL,
		autor varchar(30),
		precio float,
		editorial varchar(50) NULL,
		canitdad integer
	);

GO

INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Alquimista', 'Cohelo', 22.4, 'Filomena',12); 
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Vencedor esta solo', 'Cohelo', 22.4, NULL, 12);
INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.3, 12); 
--INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Tunel', 'Ernesto', 22.3, 12); --ERROR

SELECT * FROM libros;

--VALORES NULL
EXEC sp_columns libros;

--Recuperar libros cuya editorial es null
SELECT * FROM libros
WHERE editorial IS NULL;

--Recuperar libros cuya editorial es no null
SELECT * FROM libros
WHERE editorial IS NOT NULL;