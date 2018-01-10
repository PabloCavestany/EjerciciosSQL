/* 
-- Pregunta1
create table producto(
	codigo smallint unsigned primary key,
	nombre varchar(10),
	fecha_venta date,
	descripcion varchar(100),
	cantidad int,
	precio decimal(8,2),
	descuento decimal(3,2));

-- Pregunta2
insert into producto values 
	(1,'lápiz','1999/03/01','utensilio para escribir',25,2.5,null),
	(2,'goma','2001/11/08','utensilio para borrar',30,1.8,0.3),
	(3,'carpesano','2002/02/18','utensilio para almacenar hojas',45,12.98,null),
	(4,'tiza','2010/09/21','utensilio para escribir en la pizarra',2,40.75,0.5),
	(5,'borrador','2005/12/23','utensilio para borrar la pizarra',5,13,null);

-- Pregunta3
	-- a)select char_length(nombre),curdate(),dayname(fecha_venta) from producto;
	-- b)select cantidad+precio suma, round((cantidad+precio)/5,2) 'div',mod(cantidad+precio,5) 'mod' from producto;
	-- c)select nombre,upper(substring(nombre,2)) from producto;
	-- d)select replace(descripcion,' ','') from producto;
	-- e)select codigo from producto where descuento is null;
	-- f)select date_format(now(),'%d de %M de %Y');

-- Pregunta4
	-- a)select nombre nom, cantidad can,abs(cantidad) ab,precio, ceil(precio) sup,floor(precio) inf,descuento des, truncate(descuento,1) trunc,precio*descuento 'precio final' from producto;
	-- b)select nombre nom, cantidad can,abs(cantidad) ab,precio, ceil(precio) sup,floor(precio) inf,descuento des, truncate(descuento,1) trunc,round(precio*descuento,2) 'precio final' from producto;
	-- c)select codigo,nombre,descripcion, locate(' ',descripcion),year(fecha_venta),concat(precio,' euros') from producto;
	-- d)select codigo,descripcion,replace(descripcion,' ',''),substring(descripcion,locate(' ',descripcion)),fecha_venta+interval 100 day from producto;
	-- e)select codigo, fecha_venta, timestampdiff(day,fecha_venta,now()) 'Tiempo transcurrido' from producto order by 3 desc;
	-- f)select codigo, if(codigo>4,date_format(fecha_venta,'%Y-%M-%d-%a'),date_format(fecha_venta,'%d-%c-%Y')) 'fecha formatada' from producto;
	-- g)select codigo, descripcion,precio*descuento from producto order by ifnull(precio*descuento,'a');
