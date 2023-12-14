-- Active: 1702464302277@@localhost@5000@Stream
-- Table de liaison pour les films préférés des utilisateurs
CREATE TABLE favorite_movies (
    user_id INT REFERENCES "user"(user_id),
    movie_id INT REFERENCES movie(movie_id),
    PRIMARY KEY (user_id, movie_id)
);
-- Commentaire sur la table de liaison
COMMENT ON TABLE favorite_movies IS 'Table de liaison pour les films préférés des utilisateurs';

