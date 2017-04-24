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
 