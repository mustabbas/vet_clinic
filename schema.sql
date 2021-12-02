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
    id integer NOT NULL,
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