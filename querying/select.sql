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

-- selecting data where a column is between 2 values
-- not recommended for strings but for integers and date cols

/*
SELECT columnname1, columnname2 FROM tablename
WHERE columnname3 BETWEEN value1 AND value2;
 */
SELECT
  *
FROM
  movies;

SELECT
  movie_name,
  release_date
FROM
  movies
WHERE
  release_date BETWEEN '1995-01-01'
  AND '1999-12-31';

SELECT
  movie_name,
  movie_length
FROM
  movies
WHERE
  movie_length BETWEEN 90 AND 120;

SELECT
  movie_name,
  movie_lang
FROM
  movies
WHERE
  movie_lang BETWEEN 'E'
  AND 'P';

SELECT
  movie_name,
  movie_lang
FROM
  movies
WHERE
  movie_lang BETWEEN 'E'
  AND 'Portuguese';

-- challenge

SELECT
  movie_name,
  movie_lang
FROM
  movies
WHERE
  movie_lang IN ('English', 'Spanish', 'Korean');

SELECT
  first_name,
  last_name
FROM
  actors
WHERE
  last_name LIKE 'M%'
  AND date_of_birth BETWEEN '1940-01-01'
  AND '1969-12-31';

SELECT
  first_name,
  last_name
FROM
  directors
WHERE
  nationality IN ('British', 'French', 'German')
  AND date_of_birth BETWEEN '1950-01-01'
  AND '1980-12-31';

-- Ordering the resutls returned

/*
SELECT columnname1, columnname2 FROM tablename
ORDER BY columnname3;
 */
-- Ascending by default

SELECT
  first_name,
  last_name,
  date_of_birth
FROM
  actors
ORDER BY
  first_name;

-- Descending

SELECT
  first_name,
  last_name,
  date_of_birth
FROM
  actors
ORDER BY
  first_name DESC;

-- Descending

SELECT
  first_name,
  last_name,
  date_of_birth
FROM
  actors
ORDER BY
  first_name ASC;

-- descending integers

SELECT
  actor_id,
  first_name,
  last_name,
  date_of_birth
FROM
  actors
ORDER BY
  actor_id DESC;

SELECT
  actor_id,
  first_name,
  last_name,
  date_of_birth
FROM
  actors
WHERE
  gender = 'F'
ORDER BY
  date_of_birth DESC;

-- Limiting the number of records returned

/*
SELECT columname1, columnname2 FROM tablename
LIMIT N;
 */
SELECT
  *
FROM
  movie_revenues
ORDER BY
  domestic_takings
LIMIT 3;

-- offset to skip first 3 rows

SELECT
  *
FROM
  movie_revenues
ORDER BY
  revenue_id
LIMIT 5 OFFSET 3;

-- Distinct values

/*
SELECT DISTINCT columnname FROM tablename;
 */
SELECT DISTINCT
  movie_lang
FROM
  movies
ORDER BY
  movie_lang;

-- distinct combinations

SELECT DISTINCT
  movie_lang,
  age_certificate
FROM
  movies
ORDER BY
  movie_lang;

-- challenge

SELECT
  *
FROM
  directors
WHERE
  nationality = 'American'
ORDER BY
  date_of_birth;

SELECT DISTINCT
  nationality
FROM
  directors;

SELECT
  first_name,
  last_name,
  date_of_birth
FROM
  actors
WHERE
  gender = 'F'
ORDER BY
  date_of_birth DESC
LIMIT 10;

-- Dealing with NULL values

/*
SELECT * FROM tablename
WHERE columnanme IS NULL;

SELECT * FROM tablename
WHERE columnanme IS NOT NULL;
 */
SELECT
  *
FROM
  ACTORS
WHERE
  date_of_birth IS NULL;

SELECT
  *
FROM
  ACTORS
WHERE
  date_of_birth IS NOT NULL;

SELECT
  *
FROM
  movie_revenues
WHERE
  domestic_takings IS NOT NULL
ORDER BY
  domestic_takings DESC;

SELECT
  *
FROM
  movie_revenues
WHERE
  international_takings IS NULL;

-- Setting a column name alias

/*
SELECT columnname AS new_columnname FROM tablename;
 */
SELECT
  last_name AS surname
FROM
  directors
  SELECT
    last_name AS surname
  FROM
    directors
  WHERE
    last_name = 'Anderson';

SELECT
  last_name AS surname
FROM
  directors
WHERE
  last_name LIKE 'A%'
ORDER BY
  surname;

-- or without alias

SELECT
  last_name AS surname
FROM
  directors
WHERE
  last_name LIKE 'A%'
ORDER BY
  last_name;

-- Using concatenate

/*
SELECT 'string1' || 'string2' AS new_string;
SELECT CONCAT(column1, column2) AS new_column FROM tablename;
SELECT CONCAT_WS(' ', column1, column2) AS new_column FROM tablename;
 */
SELECT
  'concat' || 'together' AS new_string;

SELECT
  'concat' || ' ' || 'together' AS new_string;

SELECT
  CONCAT(first_name, ' ', last_name) AS full_name
FROM
  actors;

-- WS = with separator

SELECT
  CONCAT_WS(' ', first_name, last_name, date_of_birth) AS full_name
FROM
  actors;

-- challenge

SELECT
  *
FROM
  movie_revenues
WHERE
  international_takings IS NOT NULL
ORDER BY
  international_takings DESC
LIMIT 3;

SELECT
  CONCAT_WS(' ', first_name, last_name) AS full_name
FROM
  directors;

SELECT
  *
FROM
  actors
WHERE
  first_name IS NULL
  OR date_of_birth IS NULL;

