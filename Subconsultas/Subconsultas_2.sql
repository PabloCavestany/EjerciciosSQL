-- 1select name, Population from city where Population > (select Population from city where name='New York') limit 3;
-- 2a select name, (select count(*) from city where country.code=city.countrycode) NumeroCiudades from country where region='Nordic Countries';
-- 2b select country.name, count(*) from country join city on country.code=city.countrycode where region='Nordic Countries' group by country.name;
-- 3select language from countrylanguage where countrycode=(select code from country where name='Singapore') order by 1 desc;
-- 4a select distinct continent from country where code in (select countrycode from countrylanguage where language='English' and Percentage>50); 
-- 4b select distinct continent from country where exists (select * from countrylanguage where countrycode=code and language='English' and Percentage>50);
-- 5select name from country where code = (select countrycode from city order by Population desc limit 1);
-- 6Devuelve los datos del país menos poblado de Sudamérica.
-- 7select * from country where continent='South America'and Population = (select min(Population) from country where continent='South America');