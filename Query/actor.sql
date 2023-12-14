-- Active: 1702464302277@@localhost@5000@Stream@public
--Query: SELECT title, release_date FROM public.movie ORDER BY release_date DESC;
SELECT first_name, last_name, EXTRACT(YEAR FROM AGE(NOW(), birth_date)) AS age
FROM public.actor
WHERE EXTRACT(YEAR FROM AGE(NOW(), birth_date)) > 30
ORDER BY last_name, first_name;



