select count(*), localidad from personas group by localidad;
select avg(salario), funcion from personas group by funcion;
select avg(salario), funcion from personas group by funcion having avg(salario)>2500;
select avg(salario), localidad from personas group by localidad order by 1 desc limit 1;
select count(*), localidad, funcion from personas group by localidad, funcion;
select count(distinct localidad), cod_hospital from personas group by cod_hospital;
select char_length(substring_index(apellidos,',',1)) longitud from personas order by 1 desc limit 1;
select localidad,max(char_length(substring_index(apellidos,',',1))) longitud from personas group by localidad;
select sum(salario) from personas;
select count(if(dni mod 5 = 0,1,null)) from personas group by cod_hospital;


