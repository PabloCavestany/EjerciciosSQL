-- 1 select max(Population) from country group by continent;
-- 2 Incorrecto al mezclar valores agregados con valores no agregados
-- 3 select continent,avg(LifeExpectancy) from country group by continent order by 2;
-- 4 select continent,sum(Population) from country group by continent order by 2 limit 1;
-- 5 select sum(Population),Region from country where continent='Europe'group by Region order by 1 desc limit 1;
-- 6 select governmentForm, group_concat(Name SEPARATOR ' ') from country where continent='South America' group by 1;
-- 7 select governmentForm, count(*) número from country group by governmentForm order by número desc limit 5;

