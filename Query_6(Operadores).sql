--Ejercicio 2: Consultar un registro
IF OBJECT_ID('agenda') is not null
	DROP TABLE agenda;

	CREATE TABLE agenda(
		apellido varchar(30),
		nombre varchar(30),
		direccion varchar(50),
		telefono varchar(10)
	);

GO

INSERT INTO agenda (apellido,nombre, direccion, telefono) VALUES('Ramos', 'Ingrid', 'Av. Tnte Ortiz',09908555472);
INSERT INTO agenda (apellido,nombre, direccion, telefono) VALUES('Ramos','Cristian', 'Av. Tnte Ortiz', 09908555871);

--CONUSLTAR Registros
SELECT * FROM agenda 
WHERE apellido ='Ramos'

--CONUSLTAR algunos campos del registro
SELECT nombre FROM agenda 
WHERE telefono ='9908555871'