IF OBJECT_ID('peliculas') IS NOT NULL
	DROP TABLE peliculas;

	CREATE TABLE peliculas(
		nombre varchar(30),
		actor varchar(30),
		duracion int,
		cantidad integer
	);

	--Ver la estructura de la tabla
	EXEC sp_columns peliculas;

	INSERT INTO peliculas (nombre,actor, duracion, cantidad) VALUES('Mision imposible', 'Tom Cruise', 22.3, 12);