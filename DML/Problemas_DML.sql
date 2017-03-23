-- 1insert into gelderlanddist(countrycode,name,District,Inauguration) values ('SQL','Sakila','Gelderland','20010701');
-- 2insert into gelderlanddist(name, countrycode, Inauguration) values ('MySQLland','MYS','19840804'),('Fantasia','FNT','19500101');
-- 3areplace into gelderlanddist(name,countrycode,Inauguration) values ('MySQLland','SQL','19840804');
-- 3bupdate gelderlanddist set countrycode='SQL' where countrycode='MYS';
-- 4update gelderlanddist set Inauguration='1980-05-17' where name='Ede';
-- 5update gelderlanddist set countrycode='FOO' where countrycode='NLD' order by name limit 2;
-- 6delete from gelderlanddist where countrycode='FOO' limit 1;
-- 7create table newcity like city;
-- 8insert into newcity select * from city where district in ('Ontario','England');
-- 9update newcity set Population=(select Population from city where name='Sao Paulo') where district='England';
-- 10update newcity set Population=(select Population from city where name='Ede' order by 1 desc limit 1) where name='cambridge' and district='England';
/* insert into newcity values (default, 
(select name from city order by Population limit 1),
(select countrycode from city where name='cambridge' and district = 'England' limit 1),
'distrito final',
(select max(Population) div 5 from city limit 1));
*/
