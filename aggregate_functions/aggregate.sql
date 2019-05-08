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
