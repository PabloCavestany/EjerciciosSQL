-- select city.name, country.name from city,country where city.CountryCode=country.Code;
-- select countrylanguage.language, country.name from countrylanguage, country where countrylanguage.countrycode=country.code;
-- select city.name, country.name from city, country where city.countrycode=country.code order by city.population desc limit 10;
-- select city.name, country.name from city,country where city.countrycode=country.code and country.name='Ukraine';
-- select distinct language from countrylanguage, country where countrylanguage.countrycode=country.code and continent='Africa' order by countrylanguage.language asc;
-- select sum(city.population) from country, city where city.countrycode=country.code and country.name='Russian Federation';
select (country.population - sum(city.population)), country.name pais from city, country where city.countrycode=country.code and country.name='Russian Federation';