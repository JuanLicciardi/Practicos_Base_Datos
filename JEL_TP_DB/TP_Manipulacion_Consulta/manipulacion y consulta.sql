
 -- TRABAJO PRACTICO MANIPULACION Y CONSULTA DE DATOS

-- MICRO DESAFIO PASO 01

-- Punto 00 - Seleccionar y mostrar datos de tabla
SELECT *
FROM genres;

-- Punto 01 - INSERTAR
INSERT INTO genres (`name`, `ranking`, `active`) 
VALUES ('Investigación', '13', '1');

-- Punto 02 - Actualizar
UPDATE genres 
SET name = 'Investigación Científica' 
WHERE 'id' = '13';

-- Punto 03 - Eliminar
DELETE FROM genres 
WHERE (`id` = '13');

-- Punto 04 - SELECT
SELECT *
FROM movies;



