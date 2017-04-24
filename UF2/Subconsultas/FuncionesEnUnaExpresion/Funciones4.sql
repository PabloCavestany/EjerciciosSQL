-- 1 select name, population div SurfaceArea humanos from country order by humanos desc;
-- 2a select name from country where mod(IndepYear,2)=0;
-- 2b select name from country where !mod(IndepYear,2);
-- 3a select name, continent, truncate(lifeExpectancy,0) from country order by 3 desc limit 5;
-- 3b select name, continent, floor(lifeExpectancy) from country order by 3 desc limit 5;
-- 4 select name, IndepYear*SurfaceArea from country where continent in ('Europe','Africa');
-- 5a select * from country where GNP>63 and GNP<=64;
-- 6 select * from country where ceil(GNP)=64;

