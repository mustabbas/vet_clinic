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

-- Vet clinic database: query multiple tables
-- Insert data into the owners table
INSERT INTO public.owners(
    id, full_name, age)
    VALUES (1,'Sam Smith', 34);
INSERT INTO public.owners(
    id, full_name, age)
    VALUES (2,'Jennifer Orwell', 19);
INSERT INTO public.owners(
    id, full_name, age)
    VALUES (3,'Bob', 45);
INSERT INTO public.owners(
    id, full_name, age)
    VALUES (4,'Melody Pond', 77);
INSERT INTO public.owners(
    id, full_name, age)
    VALUES (5,'Dean Winchester', 14);
INSERT INTO public.owners(
    id, full_name, age)
    VALUES (6,'Jodie Whittaker ', 38);

-- Insert  data into the species table
INSERT INTO public.species(
    id, name)
    VALUES (1,'Pokemon');
INSERT INTO public.species(
    id, name)
    VALUES (2,'Digimon');

-- Insert  data into the animals table
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (1,'Charmander', '08-02-2020', 0, 'false', -11, 1, 4);
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (2,'Plantmon', '15-11-2022', 2, 'true', -5.7, 2, 3);
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (3,'Squirtle', '02-02-1993', 3, 'false', -12.13, 1, 4);
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (4,'Angemon', '12-06-2005', 1, 'true', -45, 2, 5);
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (5,'Boarmon', '07-06-2005', 7, 'true', 20.4, 2, 5);
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (6,'Blossom', '13-10-1998', 3, 'true', 17, 1, 4);
