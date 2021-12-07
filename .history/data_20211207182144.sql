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
INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (7,'Agumon', '03-02-2020', 0, 'true', 10.23, 2, 1);

INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (8,'Gabumon', '05-11-2018', 2, 'true', 8, 2, 2);

INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (9,'Pikachu', '07-01-2021', 1, 'false', 15.04, 1, 2);

INSERT INTO public.animals(
    id, name, date_of_birth, escape_attempts, neutered, weight_kg, species_id, owner_id)
    VALUES (10,'Devimon', '12-05-2017', 5, 'true', 11, 2, 3);

-- Vet clinic database: add "join table" for visits
-- Insert data for vets
INSERT INTO public.vets(
    id, name, age, date_of_graduation )
    VALUES (1,'William Tatcher', 45, '23-04-2000');
INSERT INTO public.vets(
    id, name, age, date_of_graduation )
    VALUES (2,'Maisy Smith', 26, '17-01-2019');
INSERT INTO public.vets(
    id, name, age, date_of_graduation )
    VALUES (3,'Stephanie Mendez', 64, '04-05-1981');
INSERT INTO public.vets(
    id, name, age, date_of_graduation )
    VALUES (4,'Jack Harkness', 38, '08-06-2008');

-- Insert data for specializations
INSERT INTO public.specializations(
    vets_id, species_id )
    VALUES (1 ,1 );
INSERT INTO public.specializations(
    vets_id, species_id )
    VALUES (3 ,1 );
INSERT INTO public.specializations(
    vets_id, species_id )
    VALUES (3 ,2 );
INSERT INTO public.specializations(
    vets_id, species_id )
    VALUES (4 ,2 );

-- Insert data for visits
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (1, 7, '24-05-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (3, 7, '22-07-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (4, 8, '02-02-2021' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 9, '05-01-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 9, '08-03-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 9, '14-05-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (3, 10, '04-05-2021' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (4, 1, '24-02-2021' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 2, '21-12-2019' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (1, 2, '10-08-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 2, '07-04-2021' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (3, 3, '29-09-2019' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (4, 4, '03-10-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (4, 4, '04-11-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 5, '24-01-2019' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 5, '15-05-2019' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 5, '27-02-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (2, 5, '03-08-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (3, 6, '24-05-2020' );
INSERT INTO public.visits(
    vets_id, animals_id, date)
    VALUES (1, 6, '11-01-2021' );




-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animals_id, vets_id, date) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

