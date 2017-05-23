/*
 -- Ejercicio 1
 use consultas_basicas;
 create user pep@'192.168.0.%' identified by '1234';
 grant select on emple to pep@'192.168.0.%'
		with grant option;
	
 grant select on depart to pep@'192.168.0.%' 
		with grant option;

grant usage on *.* to pep@'192.168.0.%' 
		with max_queries_per_hour 10;
*/
-- Ejercicio 2
create user Administrador@localhost identified by '1234';
grant create, create view, create routine, 
		alter routine, lock tables, select 
	on consultas_basicas.*
	to Administrador@localhost with grant option;
grant create user on *.* to Administrador@localhost;