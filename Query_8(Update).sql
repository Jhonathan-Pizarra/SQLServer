--MODIFICAR REGISTROS
IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

	CREATE TABLE libros(
		titulo varchar(30),
		autor varchar(30),
		precio float,
		canitdad integer
	);

GO

INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Alquimista', 'Cohelo', 22.4, 12);
INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Vencedor esta solo', 'Cohelo', 22.4, 12);
INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.3, 12);

SELECT * FROM libros;

--MODIFICAR Todos los REGISTROS
UPDATE libros SET titulo = 'Padre Rico'
SELECT * FROM libros;

--MODIFICAR Todos los REGISTROS donde el autor sea Cohelo
UPDATE libros SET titulo = 'Vcaman'
WHERE autor = 'Cohelo'
SELECT * FROM libros;

--MODIFICAR algunos los REGISTROS donde el autor sea Cohelo
UPDATE libros SET titulo = 'Vcaman', precio = 100.0
WHERE autor = 'Ernesto'
SELECT * FROM libros;