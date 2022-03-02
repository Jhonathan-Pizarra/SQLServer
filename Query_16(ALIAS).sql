/*
ALIAS
luego de ver las columnas calculadas vemos que es necesario identificar que es el resultado de la operacion, para eso usamos Alias
pero tambien puede ser para nombrar cualquier atribuot o columna de tabla
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

INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Tunel', 'Cohelo', 23.4, DEFAULT, 10);
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Biblia', 'Rusev', 24.4, DEFAULT, 11);
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Fabulas', 'Goku', 25.4, DEFAULT, 12);
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Blador', 'Lawler',26.4, NULL, 13);

--Operaciones de caluclos con ALIAS
--**Calcular el valor total de cada libro
SELECT titulo, precio, canitdad, (precio * canitdad) AS 'total_pagar' FROM libros;

--**Calcular precio de cada libro con 10% de dscto con ALIAS (Puede o no estar entre comillas)
SELECT titulo, precio, canitdad, (precio - (precio * (0.1))) AS dcto_10 FROM libros; --Siempre optar por multiplicar los decimales 10/100 = 0.1
--Tambien pudo ser:
UPDATE libros SET precio = precio - (precio * 0.1);

--**Queremos una nueva columna con el nombre del autor, su libro y su editorial con ALIAS
SELECT autor+'-'+titulo+'-'+editorial AS informacion FROM libros; 

--Ojo, si una columna tiene valor NULL, concatenerla a otras también producirá un valor NULL