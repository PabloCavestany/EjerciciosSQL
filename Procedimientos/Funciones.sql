/*
-- 1
create function funciones11() returns varchar(10)
	return 'Bastian';

-- 2
create function funciones12( x varchar(20)) returns varchar(20)
	return x;
-- 3
create function funciones13(x varchar(20)) returns char(1)
	return substring(x,2,1);
-- 4
delimiter //
create function funciones14(nombre varchar(10)) returns varchar(10)
begin
	declare num_emp smallint;
	set num_emp=(select jefe from emp where apellido=nombre);
	return (select apellido from emp where emp_no= num_emp );
end//
delimiter ;
*/
-- 5
create function funciones15 (fecha datetime) returns varchar(30)
	return date_format(fecha,'%d,%M,') --- `pendiente