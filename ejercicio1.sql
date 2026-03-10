-- 1) Cree un procedimiento almacenado llamado "pa_traje_prenda" que seleccione el codigo, nombre del traje, codigo de la prenda, nombre de la prenda y el stock de aquellas prendas que tengan un stock superior o igual al enviado como parámetro.
 -- Ejecute el procedimiento creado anteriormente
 DELIMITER $$
create procedure pa_traje_prenda (IN p_stock_min int )
 begin 
 select t.idtraje as cod_traje,t.nombre as nom_traje, p.codprenda as cod_prend, p.nombre as nom_prend, p.stock from traje as t
 inner join traPre as tp on t.idtraje = tp.codTraje 
 INNER JOIN prenda AS p ON tp.codPrenda = p.codPrenda
 where p.stock >=p_stock_min;
 end$$
DELIMITER ;
call pa_traje_prenda(8);