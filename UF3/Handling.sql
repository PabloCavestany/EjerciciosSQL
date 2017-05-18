-- Ejercicio 1 (Lo hacemos con clientes de empresa y no con los usuarios del sistema)
/*
delimiter //
create procedure handling1()
begin
	declare a varchar(50);
	declare fin int default false;
	declare fincursor condition for 02000;
	declare cursor1 cursor for select nombre from cliente;
	declare continue handler for fincursor set fin=true;
	open cursor1;
	eti:loop
		IF fin then 
			leave eti;
		end if;
		fetch cursor1 into a;
		select a;
	end loop;
	
	close cursor1;
end//
delimiter ;

-- Ejercicio 2
*/
drop function handling2;
 delimiter //
 create function handling2 (num int)
 returns int
 begin
	declare runner int default 2;
	declare test int default true;
	if num = 1 then return true; end if;
	prime:loop
		if (runner=num)then
			set test=true;
			leave prime;
		end if;
		set test=mod(num, runner);
		if test =0 then 
			set test=false;
			leave prime;
		end if;
		set runner=runner+1;
	end loop;
	return test;
end//
delimiter ;

-- Ejercicio 3

delimiter //
 drop function handling3;
create function handling3 (m int)
returns int
begin
	declare cont,var,prim int default 0;
	set cont = 1;
	eti:loop
		if handling2(cont) then
			set var=var+cont;
			set prim=prim+1;
		end if;
		
		if prim=m then 
			leave eti;
		end if;
		set cont=cont+1;
	end loop;
	return var;
end//
delimiter ;