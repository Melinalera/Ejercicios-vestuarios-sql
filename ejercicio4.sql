-- 4) Implementar una funcion que llamada f_codificado que recibe el nombre de la obra y que nos retorne el nombre de la obra codificado con *** al final.
 -- (Resolver utilizando alguna herramienta de IA y copiar las respuestas obtenidas hasta su resolución)
DROP FUNCTION IF EXISTS f_codificado
DELIMITER $$
CREATE FUNCTION f_codificado(nombre_obra VARCHAR (100))
RETURNS VARCHAR (100)
DETERMINISTIC READS SQL DATA
BEGIN 
     RETURN CONCAT(LEFT(nombre_obra, LENGTH(nombre_obra) - 3), '***');
     END $$ 
     DELIMITER ; 
     select f_codificado ( 'El hombre del maletin');

