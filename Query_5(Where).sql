--CONSULTAR REGISTROS
--Esto trae informacion que cumple con una condicion
IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

	CREATE TABLE libros(
		titulo varchar(30),
		autor varchar(30),
		precio float,
		canitdad integer
	);

GO

INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.4, 12);
INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Alicia Maravillas', 'Ernesto', 22.3, 12);

--CONUSLTAR Registros
SELECT * FROM libros 
WHERE titulo ='Tunel'
