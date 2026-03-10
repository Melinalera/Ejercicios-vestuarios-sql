-- 5) Crear una “VISTA", que le permita visualizar cada obra, con el traje y la cantidad de prendas que contiene.
create or replace view obra_tra_prenda as 
select o.nombre as obra , t.nombre as traje , count(tp.codPrenda) as Prendas from obra as o
inner join ObraTraje otra on o.idObra = otra.idObra
inner join  traje t on otra.idTraje = t.idtraje
inner join traPre tp on t.idTraje = tp.codTraje
inner join prenda p on tp.codPrenda = p.codPrenda
group by o.nombre, t.nombre
ORDER BY o.nombre, t.nombre;
 SELECT * FROM obra_tra_prenda;