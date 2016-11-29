/*
create table Tipos_Temporales(
	tipo1 time,
	tipo2 year,
	tipo3 date,
	tipo4 datetime,
	tipo5 timestamp);

insert into Tipos_Temporales values (
	'13:55:02', '2018', '2019-11-28','2020-10-28 23:14:10', '2009-01-31 21:34:53');


*/
-- insert into Tipos_Temporales values (
--	default, default, default, default, default);

-- Problema 2
select @@global.time_zone; -- Para ver el valor

set time_zone='+3:00'; -- Para modificarlo
