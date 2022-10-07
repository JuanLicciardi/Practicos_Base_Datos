
-- TRABAJO PRACTICO UNIONES Y FUNCIONES DE AGREGACION

-- MICRO DESAFIO - PASO 01

SELECT title AS TITULO, genre_id AS ID_Generos, genres.id AS "ID Generos", genres.name AS "Nombre Generos"
FROM series
INNER JOIN genres ON genre_id = genres.id; 


-- MICRO DESAFIO - PASO 02

SELECT first_name, last_name, title
FROM movies
INNER JOIN actor_movie ON movies.id = actor_movie.movie_id
INNER JOIN actors ON actor_movie.actor_id = actors.id 
WHERE title LIKE "%Guerra%"
GROUP BY last_name;

-- MICRO DESAFIO - PASO 03



