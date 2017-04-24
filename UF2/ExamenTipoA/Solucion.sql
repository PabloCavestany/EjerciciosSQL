-- Pregunta1
/*
create table Jugador (
	IdJugador int unsigned auto_increment primary key,
	NombreJugador varchar(30) charset utf8 not null default 'SinNombre',
	AliasJugador varchar(20) charset latin1 unique,
	FechaIncorporacion timestamp default current_timestamp,
	Sueldo decimal(8,2) not null default '0.0',
	PosicionJugador set('portero','defensa','medio','media punta','punta','lateral derecho','lateral izquierdo'),
	TiempoJugado time);
insert into Jugador values 
	(0,'Jorge','Largo',default, 4000.50,'portero','003000'),
	(0,default,null,default,12000.45,('defensa,medio'),'001212');
*/
-- Pregunta2
-- 1select count(*) NumEnfermos, hospital_cod, sala_cod, sexe from MALALT JOIN INGRESSOS using(Inscripcio) group by hospital_cod, sala_cod, sexe;
-- 2aselect cognom from MALALT where inscripcio not in (select inscripcio from ingressos);
-- 2bselect cognom from MALALT left join INGRESSOS using(inscripcio) where INGRESSOS.inscripcio is NULL;
-- 3select nom,qtat_llits /(select count(cognom) from PLANTILLA p where p.hospital_cod=h.hospital_cod group by hospital_cod) NumTrabajadores from HOSPITAL h ORDER BY 2;
-- 4select nom from HOSPITAL where hospital_cod not in (select hospital_cod from DOCTOR where especialitat='Cardiologia');
-- 5aselect (select date_format(data_naix,'%d de %M de %Y') from MALALT where inscripcio=I.inscripcio) Fecha from INGRESSOS I where hospital_cod=(select hospital_cod from HOSPITAL where nom='La Paz');
-- 5bselect date_format(data_naix,'%d de %M de %Y') Fecha from MALALT join INGRESSOS using(inscripcio) where hospital_cod=(select hospital_cod from HOSPITAL where nom like 'La Paz');
-- 6select cognom from PLANTILLA where salari>(select avg(salari) from PLANTILLA);
-- 7aselect hospital_cod,sum(qtat_llits) from SALA group by hospital_cod;
-- 7bupdate HOSPITAL h set qtat_llits=(select sum(qtat_llits) from SALA s where s.hospital_cod=h.hospital_cod);
-- 8update INGRESSOS set sala_cod=2, hospital_cod=22 where inscripcio=(select inscripcio from MALALT where cognom='Serrano V.');

	