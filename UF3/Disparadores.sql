/*
-- Ejercicio 1

create trigger disparadores1 before insert
on empresa.cliente for each row 
set @v=concat('nuevo cliente: ',NEW.nombre);


-- Ejercicio 2

create table contador (cont int unsigned primary key);
insert into contador values(0);
*/
delimiter //

create trigger disparadores2  after update
on empresa.comanda for each row 
begin 
	DECLARE var int unsigned;
	set var = (select cont from contador) + 1;
	replace into contador (cont) values (var);
end//
delimiter ;

/*
-- Ejercicio 3 (primera manera)

create trigger disparadores3 after insert
on empresa.comanda for each row
	set @var = (select sum(total) from comanda);


-- Ejercicio 3 (segunda manera)
drop trigger disparadores3;

delimiter //
create trigger disparadores3 before insert
on empresa.comanda for each row
begin
	DECLARE var decimal(10,2);
	set var = (select sum(total) from comanda);
	set @var = var + NEW.total;
end//
delimiter ;


create trigger disparadores4 after delete
on comanda for each row 
	set @var = @var - OLD.total;


create trigger disparadores5 before update
on comanda for each row 
	set NEW.com_tipo= OLD.com_tipo;
*/








