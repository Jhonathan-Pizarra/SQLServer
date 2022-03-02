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

INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Tunel', 'Cohelo', 22.4, 'Filomena',12); 
INSERT INTO libros (titulo,autor, precio, editorial, canitdad) VALUES('Vencedor esta solo', 'Cohelo', 22.4, NULL, 12);
--INSERT INTO libros (id_libro, titulo,autor, precio, canitdad) VALUES(123, 'Alquimista', 'Ernesto', 22.3, 12);   --Error, no se pueden insertar filas
--INSERT INTO libros (titulo,autor, precio, canitdad) VALUES('Tunel', 'Ernesto', 22.3, 12);  ERROR, ya existe el Tunel
 
SELECT * FROM libros;

--Tambien podemos indicar el valor de incio y de incrementeo
--id_libro int IDENTITY(100,2)

--Funciones Identity
--ident_seed(); --retorna el valor del primer id_libro
--ident_incr(); --retorna el valor del incrementeo del campo id_libro

SELECT IDENT_SEED('libros');
SELECT IDENT_INCR('libros');


--Rompiendo las reglas, si queremos insertar un valor en el campo de identidad:
SET IDENTITY_INSERT libros on;
INSERT INTO libros (id_libro, titulo,autor, precio, canitdad) VALUES(123, 'Alquimista', 'Ernesto', 22.3, 12);  
SELECT * FROM libros;
--A partir de aqui si no colocamos el valor para id_libros se genra un error, entonces para volver a como estaba.
SET IDENTITY_INSERT libros off;