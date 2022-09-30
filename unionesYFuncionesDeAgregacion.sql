SELECT title, name
FROM series
INNER JOIN genres ON series.genre_id = genres.id;


SELECT episodes.title, actors.first_name, actors.last_name
FROM episodes
INNER JOIN actor_episode ON actor_episode.episode_id = episodes.id
INNER JOIN actors ON actors.id = actor_episode.actor_id;


-- desafio 2

SELECT DISTINCT actors.first_name, actors.last_name
FROM actors
INNER JOIN actor_movie ON actors.id = actor_movie.actor_id
INNER JOIN movies ON movies.id = actor_movie.movie_id
WHERE movies.title LIKE '%Guerra%';


-- desafio 3


SELECT title, IFNULL(name, 'no tiene género') AS género
FROM movies
LEFT JOIN genres ON movies.genre_id = genres.id;

-- desafio 4

SELECT series.title, DATEDIFF(series.end_date, series.release_date)AS 'duración'
FROM series;

-- desafio 5

SELECT actors.first_name
FROM actors
WHERE LENGTH(actors.first_name) > 6
ORDER BY actors.first_name;

SELECT COUNT(*) AS total
FROM episodes;

SELECT series.title, COUNT(*) AS temporadas
FROM series
INNER JOIN seasons ON series.id = seasons.serie_id
GROUP BY series.title;

SELECT genres.name, COUNT(genre_id) AS peliculas 
FROM genres
INNER JOIN movies ON movies.genre_id = genres.id
GROUP BY genres.name
HAVING COUNT(genre_id) >= 3; 








