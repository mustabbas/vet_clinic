/* Database schema to keep the structure of entire database. */

CREATE DATABASE vet_clinic
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Vet clinic database: create animals table
CREATE TABLE IF NOT EXISTS public.animals
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default",
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg numeric,
    CONSTRAINT animals_pkey PRIMARY KEY (id)
)

-- Vet clinic database: query and update animals table
CREATE TABLE IF NOT EXISTS public.animals
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default",
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg numeric,
    species character varying COLLATE pg_catalog."default",
    CONSTRAINT animals_pkey PRIMARY KEY (id)
)

-- Vet clinic database: query multiple tables
-- Create a table named owners
CREATE TABLE IF NOT EXISTS public.owners
(
    id SERIAL,
    full_name character varying COLLATE pg_catalog."default",
    age integer,
    CONSTRAINT owners_pkey PRIMARY KEY (id)
)

-- Create a table named species
CREATE TABLE IF NOT EXISTS public.species
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default",
    CONSTRAINT species_pkey PRIMARY KEY (id)
)

-- Create a table named animals
CREATE TABLE IF NOT EXISTS public.animals
(
    id integer NOT NULL,
    name character varying COLLATE pg_catalog."default",
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg numeric,
    species_id integer,
    owner_id integer,
    CONSTRAINT animals_pkey PRIMARY KEY (id),
    CONSTRAINT fk_species
      FOREIGN KEY(species_id)
	  REFERENCES species(id),
    CONSTRAINT fk_owners
      FOREIGN KEY(owner_id)
	  REFERENCES owners(id)
)

-- Vet clinic database: add "join table" for visits
-- Create a table named vets
CREATE TABLE IF NOT EXISTS public.vets
(
    id integer NOT NULL AUTO_INCREMENT,
    name character varying COLLATE pg_catalog."default",
    age integer,
    date_of_graduation date,
    CONSTRAINT vets_pkey PRIMARY KEY (id)
)

-- Create "join table" called specializations
CREATE TABLE IF NOT EXISTS public.specializations
(
    vets_id integer,
    species_id integer,
    CONSTRAINT fk_vets_id
      FOREIGN KEY(vets_id)
	  REFERENCES vets(id),
    CONSTRAINT fk_species_id
      FOREIGN KEY(species_id)
	  REFERENCES species(id)
)

-- Create "join table" called visits
CREATE TABLE IF NOT EXISTS public.visits
(
    vets_id integer,
    animals_id integer,
    date date,
    CONSTRAINT fk_vets_id
      FOREIGN KEY(vets_id)
	  REFERENCES vets(id),
    CONSTRAINT fk_animals_id
      FOREIGN KEY(animals_id)
	  REFERENCES animals(id)
)

-- add an extra column name email to the owners table:
ALTER TABLE owners ADD COLUMN email VARCHAR(120);

-- First performance upgrade, create non-clustered indexes from visits (Improved animals count query)
CREATE INDEX animals_id_asc on visits (animals_id asc);

-- Second performance upgrade, create a non-clustered index from visitis and add extra information (Improved select * queries)
CREATE INDEX visits_id_asc on visits(visits_id asc, animals_id, date);

-- Thierd performance upgrade, create a non-clustered index from owners
CREATE INDEX email_asc ON owners (email ASC, id, full_name, age);


drawSQL-export-2021-12-08_23_30.png