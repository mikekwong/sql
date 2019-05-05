-- create the directors table
-- COL NAME / DATA TYPES / CONSTRAINTS

CREATE TABLE directors (
  director_id SERIAL PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30) NOT NULL,
  date_of_birth DATE,
  nationality VARCHAR(20)
);

SELECT
  *
FROM
  directors;

CREATE TABLE actors (
  actor_id SERIAL PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  gender CHAR(1),
  date_of_birth DATE
);

SELECT
  *
FROM
  directors;

DROP TABLE actors;

CREATE TABLE movies (
  movie_id SERIAL PRIMARY KEY,
  movie_name VARCHAR(50) NOT NULL,
  movie_length INT,
  release_date DATE,
  age_certificate VARCHAR(5),
  director_id INT REFERENCES directors (director_id) --foreign key reference

)
CREATE TABLE movie_revenues (
  revenue_id SERIAL PRIMARY KEY,
  movie_id INT REFERENCES movies (movie_id),
  domestic_takings NUMERIC(6, 2),
  international_takings NUMERIC(6, 2)
);

-- This is junction table with just 2 columns which are FKs
-- Many to Many relationship

CREATE TABLE movies_actors (
  movie_id INT REFERENCES movies (movie_id),
  actor_id INT REFERENCES actors (actor_id),
  PRIMARY KEY (movie_id, actor_id)
);

SELECT
  *
FROM
  movies_actors
