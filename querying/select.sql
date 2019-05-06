SELECT
  *
FROM
  directors;

SELECT
  first_name
FROM
  directors;

SELECT
  first_name,
  last_name
FROM
  directors;

SELECT
  first_name,
  last_name,
  nationality
FROM
  directors;

-- WHERE CLAUSES
-- since varchar, number must be in single quote, else no quote

SELECT
  *
FROM
  movies
WHERE
  age_certificate = '15';

SELECT
  *
FROM
  movies
WHERE
  age_certificate = '15';

SELECT
  *
FROM
  movies
WHERE
  age_certificate = '15'
  AND movie_lang = 'Chinese';

SELECT
  *
FROM
  movies
WHERE
  age_certificate = '15'
  OR movie_lang = 'Chinese';

SELECT
  *
FROM
  movies
WHERE
  movie_lang = 'English'
  AND age_certificate = '15'
  AND director_id = 27;

-- LOGICAL OPERATORS (>, >=, <, <=)

SELECT
  movie_name,
  movie_length
FROM
  movies;

SELECT
  movie_name,
  movie_length
FROM
  movies
WHERE
  movie_length >= 120;

SELECT
  movie_name,
  movie_length
FROM
  movies
WHERE
  movie_length < 120;

SELECT
  movie_name,
  movie_length
FROM
  movies
WHERE
  movie_length <= 120;

SELECT
  *
FROM
  movies
WHERE
  release_date > '1999-12-31';

-- Alphabetical filter

SELECT
  *
FROM
  movies
WHERE
  movie_lang > 'English';

SELECT
  movie_name,
  release_date
FROM
  movies;

SELECT
  first_name,
  last_name
FROM
  directors
WHERE
  nationality = 'American';

SELECT
  *
FROM
  actors
WHERE
  gender = 'M'
  AND date_of_birth > '1970-01-01';

SELECT
  movie_name
FROM
  movies
WHERE
  movie_length > 90
  AND movie_lang = 'English';

-- Using IN and NOT IN

/*
SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 IN ('value1', 'value2');

SELECT columname1, columnname2 FROM tablename
WHERE columnname3 NOT IN ('value1', 'value2');
 */
-- query list of first names included in list

SELECT
  first_name,
  last_name
FROM
  actors
WHERE
  first_name IN ('Bruce', 'John', 'Peter');

-- query list of firstname excluded in the list

SELECT
  first_name,
  last_name
FROM
  actors
WHERE
  first_name NOT ('Bruce', 'John', 'Peter');

SELECT
  actor_id,
  first_name,
  last_name
FROM
  actors
WHERE
  actor_id IN (2, 3, 4, 5, 6, 8);

SELECT
  actor_id,
  first_name,
  last_name
FROM
  actors
WHERE
  actor_id NOT IN (2, 3, 4, 5, 6, 8);

-- Using LIKE with % and _

/*
SELECT columnname FROM table
WHERE columnname LIKE '%pattern%';

SELECT columnname FROM table
WHERE columnname LIKE '_pattern_';
 */
-- % Look for any # of chars after the P

SELECT
  *
FROM
  actors
WHERE
  first_name LIKE 'P%';

-- _ Look for 1 exact char after indicated chars

SELECT
  *
FROM
  actors
WHERE
  first_name LIKE 'Pe_';

-- _ Look for 2 exact char before and after indicated chars

SELECT
  *
FROM
  actors
WHERE
  first_name LIKE '__rl_';

-- % Look for any # of chars before the r

SELECT
  *
FROM
  actors
WHERE
  first_name LIKE '%r';

-- % Look for any # of chars before rl / after the rl

SELECT
  *
FROM
  actors
WHERE
  first_name LIKE '%rl%';

