-- 1 select apellido, oficio, dept_no from emple;
-- 2 select dept_no, dnombre, loc from depart;
-- 3 select * from emple;
-- 4 select * from emple order by apellido;
-- 5 select * from emple order by dept_no desc;
-- 6 select * from emple order by dept_no desc, apellido asc;
-- 7 select * from emple where salario > 2000;
-- 8 select * from emple where oficio='analista';
-- 9 select apellido, oficio from emple where dept_no=20;
-- 10 select * from emple where oficio='vendedor' order by apellido;
-- 11 select * from emple where dept_no=10 and oficio='analista' order by apellido;
-- 12 select * from emple where salario>2000 or dept_no=20;
-- 13 select * from emple order by oficio, apellido;
-- 14 select * from emple where salario between 1000 and 2000;
-- 15 select * from emple where oficio = 'vendedor' and comision > 1000;
-- 16 select * from emple where oficio = 'empleado' and salario > 1000 and dept_no=10;
-- 17 select * from emple where comision is null or comision = 0;
-- 18 select apellido from emple where oficio in ('vendedor','analista','empleado');
-- 19 select apellido from emple where oficio not in ('analista','empleado') and salario>2000;
-- 20 select apellido,salario,dept_no from emple where salario>2000 and (dept_no=10 or dept_no=30);
-- 21 select year(fecha_alt) from emple;
