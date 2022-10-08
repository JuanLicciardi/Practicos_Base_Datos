
-- TRABAJO PRACTICO UNIONES Y FUNCIONES DE AGREGACION

-- MICRO DESAFIO - PASO 01

SELECT title AS TITULO, genre_id AS ID_Generos, genres.id AS "ID Generos", genres.name AS "Nombre Generos"
FROM series
INNER JOIN genres ON genre_id = genres.id; 

SELECT episodes.title, actors.first_name, actors.last_name
FROM episodes
INNER JOIN actor_episode ON actor_episode.episode_id = episodes.id
INNER JOIN actors ON actors.id = actor_episode.actor_id;

-- MICRO DESAFIO - PASO 02

SELECT first_name, last_name, title
FROM actors
INNER JOIN actor_movie ON actors.id = actor_movie.actor_id
INNER JOIN movies ON actor_movie.movie_id = movies.id 
WHERE title LIKE "%Guerra%"
GROUP BY last_name;

-- MICRO DESAFIO - PASO 03
SELECT title, genre_id, genres.id, COALESCE(name, 'No tiene género') AS Género
FROM movies
LEFT JOIN genres ON genre_id = genres.id;

-- MICRO DESAFIO - PASO 04
SELECT title, DATEDIFF ( end_date, release_date) AS 'Duración'
FROM series;

-- MICRO DESAFIO - PASO 05
SELECT first_name, last_name
FROM actors
WHERE LENGTH(first_name) > 6
ORDER BY first_name;

SELECT COUNT(id) AS 'Cantidad Episodios'
FROM episodes;

SELECT series.title, COUNT(*) AS Temporadas
FROM series
INNER JOIN seasons ON series.id = serie_id
GROUP BY series.title;

SELECT genres.name, genres.id, movies.genre_id, COUNT(movies.title)
FROM genres
INNER JOIN movies ON genres.id = movies.genre_id 
GROUP BY genres.name;

