--TRUNCATE
 /*Sirva para vaciar los registros; 
 TRUNCATE VS DELETE
 a diferencia del Delete, si existe un identity y la tabla es eliminada (Delete)
 Cuando se ingrese un nuevo registro, ese tendrá el id_libros que tenía donde se quedo el ultimo registro: es decir que si teniamos 100 libros
Y luego hacemos Delete, y luego ingresamos uno nuevo, el id de ese será 101;

Truncate hace que toda la tabla se resetee y vuelva a contar desde 1
Y es más rapido truncar que Delete, porque este ultimo borra registeros de 1 en 1
*/
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

INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Tunel', 'Cohelo', 22.4, 'Filomena',12); 
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Vencedor esta solo', 'Cohelo', 22.4, NULL, 12);
--INSERT INTO libros (id_libro, titulo,autor, precio, canitdad) VALUES(123, 'Alquimista', 'Ernesto', 22.3, 12);   --Error, no se pueden insertar filas
--INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.3, 12);  ERROR, ya existe el Tunel

SELECT * FROM libros;

--Truncar la talba
TRUNCATE TABLE libros;
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Mangakas', 'Cohelo', 22.4, 'Filomena',12); 
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Blanca nieves', 'Cohelo', 22.4, NULL, 12);

SELECT * FROM libros;