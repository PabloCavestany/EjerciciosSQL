-- 1 select continent from country group by continent having sum(Population) > 1000000000;
-- 2 select countrycode from city group by countrycode having max(Population) > 500000;
-- 3a select countrycode, avg(Population) from city group by countrycode having countrycode like 'A__';
-- 3b select countrycode, avg(Population) from city where countrycode like 'A__' group by countrycode;
-- 4 select region from country group by region having count(name)>10;
-- 5 select governmentForm from country group by 1 having count(1)>20;
-- 6 select avg(population) from country group by continent having count(*) >50;
