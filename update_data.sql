-- UPDATE DATA IN A TABLE
/*
UPDATE tablename
SET columnname = 'newvalue',
WHERE columnname = 'value';
 */
UPDATE
  examples
SET
  email = 'davidmitchel@gmail.com'
WHERE
  example_id = 1;

UPDATE
  examples
SET
  nationality = 'CAN'
WHERE
  nationality = 'USA';

UPDATE
  examples
SET
  first_name = 'James',
  age = 55
WHERE
  example_id = 5;

