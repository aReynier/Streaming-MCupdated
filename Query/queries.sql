-- Trie des films
SELECT title, release_date FROM public.movie ORDER BY release_date DESC;

-- Trie des acteurs par age
SELECT first_name, last_name, EXTRACT(YEAR FROM AGE(NOW(), birth_date)) AS age
FROM public.actor
WHERE EXTRACT(YEAR FROM AGE(NOW(), birth_date)) > 30
ORDER BY last_name, first_name;

-- La liste des acteurs/actrices principaux pour un film donné
 SELECT  actor.actor_id, actor.first_name, actor.last_name, movie_actors.role
 FROM actor
   JOIN movie_actors ON actor.actor_id = movie_actors.actor_id
   WHERE movie_actors.movie_id = 1
   ORDER BY movie_actors.role ASC;

-- La liste des films pour un acteur/actrice donné:
SELECT movie.movie_id, movie.title, movie.duration, movie.release_date, movie_actors.role
FROM movie
  JOIN movie_actors ON movie.movie_id = movie_actors.movie_id
  WHERE movie_actors.actor_id = 7
  ORDER BY movie_actors.role ASC;

-- Ajouter un film
 INSERT INTO movie (title, duration, release_date)
    VALUES ('The Dark Knight', 152, '2008-07-18');  

-- Ajouter un acteur
INSERT INTO actor (first_name, last_name, birth_date)
VALUES ('Christian', 'Bale', '1974-01-30');

-- Afficher les 3 derniers films
SELECT movie_id, title, duration, release_date
FROM movie
ORDER BY release_date DESC LIMIT 3;

