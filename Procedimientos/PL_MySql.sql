/*
--Ejercicios PL1_1
-- 1
create procedure  primer_procedimiento () 
	select * from city limit 10;
-- 2
 -- capítulo 22 
 ------------------------------------
--Ejercicios PL1_2
-- 1
	call primer_procedimiento;
-- 2
delimiter //
create procedure  segundoC_procedimiento () 
	begin 
		select * from city limit 10; 
		select * from city limit 10; 
	end//
-- 3


create procedure ejercicio123(parametro int) 
	select parametro;
	
call ejercicio123(3);


-- Ejercicio 1-5 ---
-- 2 (Insertar cliente)
-- Para cambiar el modo de operación hacemos:
-- set sql_mode=''; (Así evitamos operar en modo 
-- STRICT_TRANS_TABLES)
create procedure ejercicio152(codigoCliente int, nombreCliente varchar(45))
	insert into cliente(cliente_cod,nombre) 
		values (codigoCliente,nombreCliente);
*/
-- 4
delimiter //
create procedure ejercicio154(fecha date)
begin
	declare var int;
	select datediff(fecha,curdate()) into var;
	select date_format(fecha,'%W %d/%m/%Y');
	select var;
end//
delimiter ;













 