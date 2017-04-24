/* 
PROBLEMA2: MODELO RELACIONAL WORLD
COUNTRY(__Code__, Name, Continent, Region, SurfaceArea,IndepYear, Population, LifeExpectancy,GNP, GNPOld,LocalName,GovermentForm,HeadState,Capital,Code2 )
COUNTRYLANGUAGE(__CountryCode__ ,__Language__, IsOfficial, Percentage)
		DONDE {CountryCode} REFERENCIA A COUNTRY.
CITY (__Id__, Name, CountryCode, District, Population)
		DONDE {Id} REFERENCIA A COUNTRY

PROBLEMA 3: CREACIÓN DE TABLAS
		

create database coches charset utf8;
use coches;

create table MARCA (
	Cifm int unsigned auto_increment primary key,
	Nombre varchar(32)  not null default 'desconocido',
	Ciudad varchar(32) not null default 'desconocido')
	comment 'Tabla marca guardará marcas de coches';
create table COCHE (
	CodCoche varchar(10) default '##' primary key,
	Nombre varchar(15) not null default 'Sin nombre',
	Modelo varchar(15) not null default 'Sin modelo',
	Cifm int unsigned not null,
	foreign key (Cifm) references MARCA(Cifm) on delete no action on update cascade)
	comment 'Tabla albergará tipos de coche';
create table CONCESIONARIO (
	Cifc int unsigned default 0 primary key,
	Nombre varchar(15) not null default 'Sin concesio' unique,
	Ciudad varchar(15) default 'Barcelona' not null)
	Comment 'Tabla con los concesionarios';
create table CLIENTE (
	DNI char(9) primary key,
	Nombre varchar(30) not null default 'Sin nombre',
	Apellido varchar(30) not null default 'Sin apellido',
	Ciudad varchar(30) not null default 'Sin ciudad')
	comment 'Tabla sobre clientes';
create table VENTA (
	Cifc int unsigned,
	DNI char(9),
	CodCoche varchar(10),
	color enum('Azul','Verde','Rojo','SinColor') default 'SinColor',
	primary key (Cifc, DNI, CodCoche),
	foreign key (Cifc) references CONCESIONARIO(Cifc) on delete no action on update cascade,
	foreign key (DNI) references 	CLIENTE(DNI) on delete no action on update cascade,
	foreign key (CodCoche) references COCHE(CodCoche) on delete no action on update cascade)
	comment 'Tabla que registra ventas producida';
	
INSERCIONES EN TABLAS
*/
-- insert into MARCA values (0,'Audi','Barcelona'),(0,Default,Default);
-- insert into COCHE values ('1234','Volkswagen','Golf',1),('4321','Default',Default, 2);
-- insert into CONCESIONARIO values (1111,'PepeSL','Barcelona');
-- insert into CONCESIONARIO(Cifc) values (2222);
-- insert into CLIENTE values ('123','Pepe','García','Barcelona');
-- insert into VENTA values (2222,'123','1234','Azul');