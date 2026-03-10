-- 3) Cree un procedimiento almacenado llamado "pa_obra" al cual le enviamos el codigo de una obra  y que nos retorne la cantidad de trajes que tiene esa obra en un parametro de salida. Ejecute el procedimiento creado anteriormente.
delimiter $$

create procedure pa_obra (in cod_obra int, out p_cantidad int)
begin 
select count(*) Into p_cantidad from ObraTraje where idObra = cod_obra;
end$$
delimiter ;
set  @p_cantidad =0;
call pa_obra (8856,@p_cantidad);
select @p_cantidad;