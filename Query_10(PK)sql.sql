--ClAVE PRIMARIA PK
IF OBJECT_ID('libros') is not null
	DROP TABLE libros;

	CREATE TABLE libros(
		titulo varchar(30) NOT NULL,
		autor varchar(30),
		precio float,
		editorial varchar(50) NULL,
		canitdad integer,

		PRIMARY KEY (titulo)
	);

GO

INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Tunel', 'Cohelo', 22.4, 'Filomena',12); 
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Vencedor esta solo', 'Cohelo', 22.4, NULL, 12);
INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Alquimista', 'Ernesto', 22.3, 12);  
--INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.3, 12);  ERROR, ya existe el Tunel
 
SELECT * FROM libros;

--MODIFICAR un registro para añadirle un titulo
/*-Error: Se duplica Vacaman porque este se escribe en tooods las columnas que tienene como Autor a Cohelo, y solo puede haber un libro llamado Vacaman de este autor
UPDATE libros SET titulo = 'Vacaman'
WHERE autor = 'Cohelo'
SELECT * FROM libros;
*/
