/* Populate database with sample data. */

-- Vet clinic database: create animals table
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg)
    VALUES (1,'Agumon', '03-02-2020', 0, 'true', 10.23);

INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg)
    VALUES (2,'Gabumon', '05-11-2018', 2, 'true', 8);

INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg)
    VALUES (3,'Pikachu', '07-01-2021', 1, 'false', 15.04);

INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg)
    VALUES (4,'Devimon', '12-05-2017', 5, 'true', 11);

-- Vet clinic database: query and update animals table
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species)
    VALUES (1,'Charmander', '08-02-2020', 0, 'false', -11, '');
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species)
    VALUES (2,'Plantmon', '15-11-2022', 2, 'true', -5.7, '');
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species)
    VALUES (3,'Squirtle', '02-02-1993', 3, 'false', -12.13, '');
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species)
    VALUES (4,'Angemon', '12-06-2005', 1, 'true', -45, '');
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species)
    VALUES (5,'Boarmon', '07-06-2005', 7, 'true', 20.4, '');
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species)
    VALUES (6,'Blossom', '13-10-1998', 3, 'true', 17, '');
