-- 1 select char_length(name),name from country;
-- 2 select instr(name,' '), name from country;
-- 3a select strcmp(name,'Armenia'),name from country where continent='Asia';
-- 3b select name from country where strcmp(name,'Armenia')=0;
-- 4 select concat(name,' pertenece al continente ',continent) País from country;
-- 5a select upper(left(name,3)) from country where continent='Europe';
-- 5b (ampliación) select concat(upper(left(name,3)),lower(right(name,char_length(name)-3))) from country where continent='Europe';
-- 6 select substring_index(name,' ',1) from country;

