-- Aggregate functions: count
/*
SELECT COUNT(columnname) FROM tablename;
 */
SELECT
  COUNT(*)
FROM
  movie_revenues;

SELECT
  COUNT(international_takings)
FROM
  movie_revenues;

SELECT
  COUNT(*)
FROM
  movies
WHERE
  movie_lang = 'English';

-- Aggregate Functions: SUM
-- to be used only on integers

/*
SELECT SUM(columnname) FROM tablename;
 */
SELECT
  SUM(domestic_takings)
FROM
  movie_revenues;

SELECT
  SUM(domestic_takings)
FROM
  movie_revenues
WHERE
  domestic_takings > 100.0;

SELECT
  SUM(movie_length)
FROM
  movies
WHERE
  movie_lang = 'Chinese';

-- Aggregate Functions: MIN and MAX

/*
SELECT MAX(columnname) FROM tablename;
SELECT MIN(columnname) FROM tablename;
 */
SELECT
  MAX(movie_length)
FROM
  movies;

SELECT
  MAX(movie_length)
FROM
  movies;

SELECT
  MAX(movie_length)
FROM
  movies
WHERE
  movie_lang = 'Japanese';

SELECT
  MAX(release_date)
FROM
  movies;

SELECT
  MIN(release_date)
FROM
  movies;

-- MAX alphabetically returns the reverse chronological order

SELECT
  MAX(movie_name)
FROM
  movies;

-- MIN alphabetically returns the chronological order

SELECT
  MIN(movie_name)
FROM
  movies;

-- Aggregate Function: AVG

/*
SELECT AVG(columnname) FROM tablename;
 */
SELECT
  AVG(movie_length)
FROM
  movies;

SELECT
  AVG(movie_length)
FROM
  movies
WHERE
  age_certificate = '18';

-- Aggregate challenge

SELECT
  COUNT(*)
FROM
  actors
WHERE
  date_of_birth > '1970-01-01';

SELECT
  MAX(domestic_takings),
  MIN(domestic_takings)
FROM
  movie_revenues;

SELECT
  SUM(movie_length)
FROM
  movies
WHERE
  age_certificate = '15';

SELECT
  COUNT(*)
FROM
  directors
WHERE
  nationality = 'Japanese';

SELECT
  AVG(movie_length)
FROM
  movies
WHERE
  movie_lang = 'Chinese';

