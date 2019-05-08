-- Grouping Data
/*
SELECT column1, AGGFUN(column2) FROM tablename
GROUP BY column1;
 */
SELECT
  COUNT(movie_lang)
FROM
  movies;

SELECT
  movie_lang,
  COUNT(movie_lang)
FROM
  movies
GROUP BY
  movie_lang;

-- Return movie langs grouped distinctly so the average movie length is filtered by language. If yo udon't use GROUP BY, the AGG func of AVG poses a conflict by returning just 1 result of the average movie length

SELECT
  movie_lang,
  AVG(movie_length)
FROM
  movies
GROUP BY
  movie_lang;

-- WHERE clauses must always come before GROUP BY clauses

SELECT
  COUNT(movie_lang)
FROM
  movies;

SELECT
  movie_lang,
  COUNT(movie_lang)
FROM
  movies
GROUP BY
  movie_lang;

SELECT
  movie_lang,
  AVG(movie_length)
FROM
  movies
GROUP BY
  movie_lang;

SELECT
  movie_lang,
  age_certificate,
  AVG(movie_length)
FROM
  movies
WHERE
  movie_length > 120
GROUP BY
  movie_lang,
  age_certificate;

SELECT
  movie_lang,
  MIN(movie_length),
  MAX(movie_length)
FROM
  movies
WHERE
  age_certificate = '15'
GROUP BY
  movie_lang;

-- HAVING Clauses

/*
SELECT column1, AGGFUN(column2) FROM tablename
GROUP BY column1
HAVING AGGFUN(column3) = value;
 */
-- AGG functions can't be used with WHERE clause-
-- WHERE acts on actual values in a column, not AGG values

SELECT
  movie_lang,
  COUNT(movie_lang)
FROM
  movies
GROUP BY
  movie_lang
HAVING
  COUNT(movie_lang) > 1;

SELECT
  movie_lang,
  COUNT(movie_lang)
FROM
  movies
WHERE
  movie_length > 120
GROUP BY
  movie_lang
HAVING
  COUNT(movie_lang) > 1;

-- Challenge AGG funcs

SELECT
  nationality,
  COUNT(nationality)
FROM
  directors
GROUP BY
  nationality;

SELECT
  movie_lang,
  age_certificate,
  SUM(movie_length)
FROM
  movies
GROUP BY
  movie_lang,
  age_certificate
ORDER BY
  movie_lang,
  age_certificate;

SELECT
  movie_lang,
  SUM(movie_length)
FROM
  movies
GROUP BY
  movie_lang
HAVING
  SUM(movie_length) > 500;

