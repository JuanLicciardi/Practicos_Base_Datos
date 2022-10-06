
 -- TRABAJO PRACTICO MANIPULACION Y CONSULTA DE DATOS

-- MICRO DESAFIO PASO 01 
-- SELECT, INSERT, UPDATE & DELETE

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

-- Punto 04 - Seleccionar y mostrar todo
SELECT *
FROM movies;

-- Punto 05 - Seleccionar y mostrar tres columnas
SELECT first_name, last_name, rating
FROM actors;

-- Punto 06 - Seleccionar y mostrar modificando nombre de encabezado
SELECT title AS Titulo
FROM series AS Series;

-- MICRO DESAFIO PASO 02
-- WHERE & ORDER BY

-- Punto 01 - Seleccionar y mostrar por filtro de RATING 
SELECT first_name, last_name, rating
FROM actors
WHERE rating > 7.5;

-- Punto 02 - Seleccionar y mostrar por filtro de RATING & AWARDS 
SELECT title, rating, awards
FROM movies
WHERE rating > 7.5 AND awards>2;

-- Punto 03 - Seleccionar y mostrar ordenado por RATING  
SELECT title, rating
FROM movies
ORDER BY rating ASC ;


-- MICRO DESAFIO PASO 03
-- LIMIT & OFFSET

-- Punto 01 - Seleccionar y mostrar tres primeras filas
SELECT title
FROM movies
LIMIT 3;

-- Punto 02 - Seleccionar y mostrar CINCO mayor RATING
SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 5;

-- Punto 03 - Seleccionar y mostrar DEL 05 AL 10 
SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 5
OFFSET 5;

-- Punto 04 - Seleccionar y mostrar PAGINA UNO Y TRES 
SELECT id, first_name, last_name
FROM actors
LIMIT 10;

SELECT id, first_name, last_name
FROM actors
LIMIT 10
OFFSET 20;


-- MICRO DESAFIO PASO 04
-- BETWENN & LIKE

-- Punto 01 - Seleccionar y mostrar tres primeras filas
SELECT title
FROM movies
LIMIT 3;
