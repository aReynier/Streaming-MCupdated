-- Active: 1702464302277@@localhost@5000@Stream
-- Table de liaison pour les acteurs dans les films
CREATE TABLE movie_actors (
    movie_id INT REFERENCES movie(movie_id),
    actor_id INT REFERENCES actor(actor_id),
    role VARCHAR(255),
    PRIMARY KEY (movie_id, actor_id)
);
