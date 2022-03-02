--Insertar registros en tabla
--1) Si es tabla vacia, es buena practica una ejecucion por lotes
IF OBJECT_ID('usuario') is not null
	DROP TABLE usuario;

	CREATE TABLE usuario(
		nombre varchar(30),
		clave varchar(10)
	);

	--Insertar una fila en la tabla
	INSERT INTO usuario(nombre, clave) values ('Jhonathan', '123123');


--Recuperartodos los registro:
select * from usuario;

