/* Populate database with sample data. */

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
