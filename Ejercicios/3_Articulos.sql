IF OBJECT_ID('articulos') is not null
	DROP TABLE articulos;

	CREATE TABLE articulos(
		codigo integer,
		nombre varchar(30),
		descripcion varchar(50),
		precio float,
		cantidad integer
	);

GO

INSERT INTO articulos (codigo,nombre, descripcion, precio, cantidad) 
VALUES(1111, 'Guantes', 'Guantes de box', 12.87, 4);
INSERT INTO articulos (codigo,nombre, descripcion, precio, cantidad) 
VALUES(3333, 'Guantes', 'Guantes de cocina', 20.34, 14);
INSERT INTO articulos (codigo,nombre, descripcion, precio, cantidad) 
VALUES(2222, 'Mantel', 'Manteles de cocina', 12.87, 44)

--CONUSLTAR Registros
SELECT * FROM articulos 
WHERE codigo ='1111'

--CONUSLTAR algunos campos del registro
SELECT descripcion FROM articulos 
WHERE precio < 44