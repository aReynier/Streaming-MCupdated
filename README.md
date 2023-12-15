# Base de données de la Plateforme de Streaming

Ce dépôt contient le code SQL et la structure de base de données pour la plateforme de streaming.

## Prérequis

- PostgreSQL (version 9.5 ou ultérieure recommandée)
- Un client SQL pour gérer et interroger la base de données (par exemple, pgAdmin ou DBeaver)
- VSCode (optionnel)
- Langage SQL
- Lire la documentation de PostgreSQL : [https://www.postgresql.org/docs/](https://www.postgresql.org/docs/)

## Installation de PostgreSQL

1. Téléchargez PostgreSQL à partir de [https://www.postgresql.org/download/](https://www.postgresql.org/download/) et suivez les instructions d'installation pour votre système d'exploitation.
2. Une fois l'installation terminée, assurez-vous que le service PostgreSQL est en cours d'exécution.
3. Ouvrez votre client SQL (pgAdmin) et connectez-vous à votre serveur PostgreSQL.

## Utilsation VSCode

1. Installez l'extension PostgreSQL (https://marketplace.visualstudio.com/items?itemName=cweijan.vscode-postgresql-client2) pour VSCode.
![Extension PostgreSQL](./divers/Screenshot%202023-12-15%20at%2014.57.14.png)

2. Ouvrez le dossier du projet dans VSCode.

## Configuration possible de l'extension PostgreSQL

1. Ouvrez le fichier `settings.json` et modifiez les paramètres suivants :
   - `pgsql.defaultDatabase`: Nom de la base de données
   - `pgsql.defaultHost`: Hôte de la base de données
   - `pgsql.defaultPassword`: Mot de passe de la base de données
   - `pgsql.defaultUser`: Nom d'utilisateur de la base de données

P.S. : Vous pouvez également configurer ces paramètres dans les paramètres de l'extension. Puis travailler directement sur les fichiers SQL avec l'extension.

## Configuration de la base de données

1. Clonez ce dépôt sur votre machine locale.
2. Ouvrez votre client SQL et connectez-vous à votre serveur PostgreSQL.
3. Créez une nouvelle base de données.
4. Exécutez les scripts SQL dans l'ordre suivant pour configurer la base de données :

   ### Tables Principales et contraintes

   - `actor.sql`
   - `director.sql`
   - `movie.sql`
   - `user.sql`
   - `movie_actors.sql`
   - `favorite_movies.sql`

   ### Queries

   - `Query/queries.sql`

## Structure de la Base de Données

### Tables Principales\

1. **actor**: Contient des détails sur les acteurs et actrices.

   - actor_id (Primary Key)
   - first_name
   - last_name
   - birth_date
   - created_at
   - updated_at

2. **movie**: Stocke les informations sur les films.

   - movie_id (Primary Key)
   - title
   - duration
   - release_date
   - created_at
   - updated_at

3. **director**: Stocke des informations sur les réalisateurs.

   - director_id (Primary Key)
   - first_name
   - last_name
   - created_at
   - updated_at

4. **"user"**: Table pour les utilisateurs de la plateforme.

   - user_id (Primary Key)
   - email
   - password
   - created_at
   - updated_at

5. **favorite_movies**: Table de liaison pour les films préférés des utilisateurs.

   - user_id (Foreign Key vers "user")
   - movie_id (Foreign Key vers movie)
   - created_at
   - updated_at

6. **movie_actors**: Associe les acteurs aux films avec les rôles.
   - movie_id (Foreign Key vers movie)
   - actor_id (Foreign Key vers actor)
   - role
   - created_at
   - updated_at

### Instructions SQL

- `Query/queries.sql`: Contient les requêtes pour interroger la base de données conformément aux spécifications du projet.

- `.Tables`: Contient les scripts SQL pour créer les tables et les contraintes.

## Requêtes Pré-définies

1. Trie des films du plus récent au plus ancien
2. Trie des acteurs par âge (plus de 30 ans) dans l'ordre alphabétique
3. La liste des acteurs/actrices principaux pour un film donné (triée par rôle)
4. La liste des films pour un acteur/actrice donné (triée par rôle)
5. Ajouter un film
6. Ajouter un acteur
7. Afficher les 3 derniers films



