-- 1
/*
delimiter //
create procedure cursores11()
begin
	declare a varchar(50);
	declare cursor1 cursor for select nombre from cliente;
	open cursor1;
	loop
		fetch cursor1 into a;
		select a;
	end loop;
	
	close cursor1;
end//
delimiter ;
*/
delimiter //
create procedure cursores12()
begin
	declare a varchar(50);
	declare cont int default 0;
	declare cursor1 cursor for select nombre from cliente;
	set cont=(select count(nombre) from cliente);
	open cursor1;
	eti:loop
		fetch cursor1 into a;
		select a, cont;
		set cont=cont-1;
		if cont=0 then leave eti; end if;
	end loop;
	
	close cursor1;
end//
delimiter ;