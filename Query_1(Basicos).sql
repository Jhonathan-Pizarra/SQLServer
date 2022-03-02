--Crear tabla
--No puede haber 2 tablas con el mismo nombre
CREATE TABLE usuario(
	nombre varchar(30), --campo nombre de tipo String (30)
	clave varchar(30) 
);

--Ver la estructura de la tabla  
--Este sp se crea automaticamente cuando se crea la tabla 
EXEC sp_columns usuario;

--Borrar tabla
--Luego de borrar la tabla debemos refrescar la bdd
DROP TABLE usuario;

--Ejecutar un lote de comandos
--Es basicamente ejecutar varios comandos en una sola ejecucion, es una forma de try para evitar errores
IF OBJECT_ID('usuario') is not null
	DROP TABLE usuario;

CREATE TABLE usuario(
	nombre varchar(30), --campo nombre de tipo String (30)
	clave varchar(30) 
);

--Recopilar info
--dbo es database owner 
EXEC sp_tables @table_owner = 'dbo'; --muestre todas las tabalas que hemos creado, nuestras
EXEC sp_columns usuario; -- ver las columnas que tiene el usuario
