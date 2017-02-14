/*CREATE TABLE tablaClase (
    Id_Clase tinyint unsigned AUTO_INCREMENT PRIMARY KEY,
    Descripcion_Clase varchar (100) NOT NULL DEFAULT 'Falta descripción');
CREATE TABLE tablaAlumno (
	DNI_Alumno char(9) PRIMARY KEY,
	nombreAlumno varchar(20) NOT NULL DEFAULT 'Sin nombre',
	Clase_Alumno tinyint unsigned DEFAULT 0,
	FOREIGN KEY (Clase_Alumno) REFERENCES tablaClase(Id_Clase));
Insert into tablaClase values(1,'La clase dels cargols'),(2,'La clase de los piratas'), (default, 'La clase de los canguros');
Insert into tablaAlumno values ('12345678N','Alex',1),('12345678H','Pepito',2),('87654331J','Rodrigo',3); 
*/
-- delete from tablaClase where Id_Clase=3;
-- insert into tablaClase values (5,'La clase dels porquets');
-- delete from tablaClase where Id_Clase=5;
-- delete from tablaAlumno where nombreAlumno='Pepito';
update tablaClase set Id_Clase=4 where Id_Clase=1;
