--CONUSLTAS COLUMNAS
IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

	CREATE TABLE libros(
		titulo varchar(30),
		autor varchar(30),
		precio float,
		canitdad integer
	);

GO --Un compando que nos permite particionar la ejecucion
	--En la primeraconexion ejecuta eldrop table y elcreate  table

	--En la segunda conecion se ejecuta  el insert  y el select.
EXEC sp_columns libros;

INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.4, 12);
INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.3, 12);

--CONUSLTARC Todos CAMPOS:
SELECT * FROM libros;

--CONUSLTARC ALGUNOS CAMPOS:
SELECT titulo, autor, precio FROM libros;

--CONUSLTARC Solo 1 CAMPOS:
SELECT titulo FROM libros;