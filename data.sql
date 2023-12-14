-- Active: 1702464302277@@localhost@5000@Stream@public
-- Inserting data into the "actor" table
INSERT INTO actor (first_name, last_name, birth_date)
VALUES ('John', 'Doe', '1990-05-15'),
       ('Alice', 'Smith', '1985-08-22'),
       ('Bob', 'Johnson', '1978-03-10'),
       ('Eva', 'Brown', '1995-11-27'),
       ('Michael', 'Williams', '1980-06-18');


-- Path: public.sql
-- Inserting data into the "director" table
INSERT INTO director (first_name, last_name)
VALUES ('Christopher', 'Nolan'),
       ('Quentin', 'Tarantino'),
       ('Steven', 'Spielberg'),
       ('Greta', 'Gerwig'),
       ('Martin', 'Scorsese');


-- Path: public.sql
-- Inserting data into the "movie" table
INSERT INTO movie (title, duration, release_date)
VALUES ('Inception', 148, '2010-07-16'),
       ('Pulp Fiction', 154, '1994-10-14'),
       ('The Shawshank Redemption', 142, '1994-09-23'),
       ('Little Women', 135, '2019-12-25'),
       ('Goodfellas', 146, '1990-09-19');


-- Path: public.sql 
-- Inserting data into the "user" table
INSERT INTO "user" (email, password)
VALUES ('user1@example.com', 'password1'),
       ('user2@example.com', 'password2'),
       ('user3@example.com', 'password3'),
       ('user4@example.com', 'password4'),
       ('user5@example.com', 'password5');


-- Insérer des films préférés pour l'utilisateur avec user_id = 1
INSERT INTO favorite_movies (user_id, movie_id)
VALUES
    (1, 1),  -- Film avec movie_id = 1
    (1, 3),  -- Film avec movie_id = 3
    (1, 5);  -- Film avec movie_id = 5
