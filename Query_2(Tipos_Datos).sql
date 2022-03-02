--Tipos de datos
IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

	CREATE TABLE libros(
		titulo varchar(30),
		autor varchar(30),
		precio float,
		canitdad integer
	);

EXEC sp_columns libros;

INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.4, 12);
INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.3, 12);

SELECT * FROM libros;
