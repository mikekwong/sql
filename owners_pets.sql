-- create owners table
CREATE TABLE owners (
  owner_id INT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  city VARCHAR(30),
  state CHAR(2)
);

-- create pets table with FK

CREATE TABLE pets (
  pet_id INT PRIMARY KEY,
  species VARCHAR(30),
  full_name VARCHAR(30),
  age INT,
  owner_id INT REFERENCES owners (owner_id)
);

-- add email column to owners table

ALTER TABLE owners
  ADD COLUMN email VARCHAR(50) UNIQUE;

ALTER TABLE owners ALTER COLUMN last_name TYPE VARCHAR(50), ALTER TABLE owners RENAME COLUMN owner_id TO id;

ALTER TABLE owners DROP COLUMN email;

ALTER TABLE owners
  ADD COLUMN email VARCHAR(50) UNIQUE;

