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

