--BORRAR REGISTROS
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

--ELIMINARREGISTROS
--Eliminamos la fila (Elregisto) de libro cuyoautor ser Cohelo
DELETE FROM libros
WHERE autor = 'Cohelo' 

SELECT * FROM libros;