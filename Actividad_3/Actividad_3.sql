-- 1select f.Data, f.Import, c.Nom, c.Telefon from factura f join client c using(DNI);
-- 1select f.Data, f.Import, c.Nom, c.Telefon from factura f natural join client c ;
-- 1select f.Data, f.Import, c.Nom, c.Telefon from factura f, client c where f.DNI=c.DNI;
-- 2select sum(f.Import) 'Suma total' from factura f where f.Data='20090306';
-- 3select d.Descripcio from detallfactura d join factura f using (codifactura) where f.DNI='022222222R';
-- 4select c.Nom, p.Titol from client c join prestec pr on c.DNI=pr.DNI join copia co on co.codipeli=pr.codipeli and co.codicopia=pr.codicopia join pelicula p on p.codipeli=co.codipeli;
select c.Nom, p.Titol from client c join prestec pr  using(DNI) join pelicula p using(codipeli);