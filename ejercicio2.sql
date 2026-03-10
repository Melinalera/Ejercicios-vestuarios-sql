-- 2) Cree un procedimiento almacenado llamado "pa_prendas_actualizar_stock" , este procedimiento debera tener dos parametros, el primero se pasara el codigo de la prenda y en el segundo el nuevo valor del stock. El prodecimiento debera actualizar la prenda con el nuevo valor de stock informado
delimiter $$
create procedure pa_prendas_actualizar_stock
 (in p_CodPrenda INT, in p_nuevoStock INT)
begin

update prenda
set stock = p_nuevoStock
where codPrenda = p_CodPrenda;

end$$
delimiter ;
 
 call pa_prendas_actualizar_stock (1031,48);
 SELECT * FROM prenda WHERE codPrenda = 1031;