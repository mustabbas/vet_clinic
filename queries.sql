/*Queries that provide answers to the questions from all projects.*/
-- Vet clinic database: create animals table
SELECT id, name, date_of_birth, escape_attempts, neutered, weight_kg
	FROM public.animals where name like '%mon';

SELECT  name
	FROM public.animals where date_of_birth  between '2016/01/01' and '2019/12/31';

SELECT  name
	FROM public.animals where neutered and escape_attempts < 3;

SELECT  date_of_birth
	FROM public.animals where name = 'Agumon' or name = 'Pikachu';

SELECT  name, escape_attempts
	FROM public.animals where weight_kg > 10.5;

SELECT id, name, date_of_birth, escape_attempts, neutered, weight_kg
	FROM public.animals where neutered;

SELECT id, name, date_of_birth, escape_attempts, neutered, weight_kg
	FROM public.animals where name != 'Gabumon';

SELECT id, name, date_of_birth, escape_attempts, neutered, weight_kg
	FROM public.animals where weight_kg >= 10.4 and weight_kg <= 17.3;


-- Vet clinic database: query and update animals table
-- How many animals are there?
SELECT count(*) FROM public.animals;
-- How many animals have never tried to escape?
SELECT count(*) FROM public.animals where escape_attempts = 0;
-- What is the average weight of animals?
SELECT AVG(weight_kg) FROM public.animals;
-- Who escapes the most, neutered or not neutered animals?
SELECT neutered FROM public.animals where 
escape_attempts = (SELECT MAX(escape_attempts) FROM public.animals);
-- What is the minimum and maximum weight of each type of animal?
SELECT MAX(weight_kg) FROM public.animals;
SELECT MIN(weight_kg) FROM public.animals;
-- What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT avg(escape_attempts) FROM public.animals
	where date_of_birth  between '1990/01/01' and '2000/12/31';

-- Vet clinic database: query multiple tables
-- What animals belong to Melody Pond?
SELECT name FROM public.animals 
join public.owners on public.animals.owner_id = public.owners.id
where public.owners.full_name = 'Melody Pond'
-- List of all animals that are pokemon (their type is Pokemon).
SELECT public.animals.name FROM public.animals 
join public.species on public.animals.species_id = public.species.id
where public.species.name = 'Pokemon'
-- List all owners and their animals, remember to include those that don't own any animal.
SELECT public.owners.full_name, public.animals.name FROM public.owners
LEFT join public.animals on public.owners.id = public.animals.owner_id 
ORDER BY public.owners.full_name
-- How many animals are there per species?
SELECT count(*) FROM public.animals
join public.species on public.animals.species_id = public.species.id
where public.species.name = 'Pokemon'

SELECT count(*) FROM public.animals
join public.species on public.animals.species_id = public.species.id
where public.species.name = 'Digimon'
-- List all Digimon owned by Jennifer Orwell.
SELECT public.animals.name FROM public.animals
join public.species on public.animals.species_id = public.species.id
join public.owners on public.animals.owner_id = public.owners.id
where public.species.name = 'Digimon' and public.owners.full_name = 'Jennifer Orwel'
-- List all animals owned by Dean Winchester that haven't tried to escape.
SELECT public.animals.name FROM public.animals
join public.owners on public.animals.owner_id = public.owners.id
where public.owners.full_name = 'Dean Winchester'
and public.animals.escape_attempts = 0
-- Who owns the most animals?
SELECT  public.owners.full_name, COUNT(*) most FROM public.animals
join public.owners on public.animals.owner_id = public.owners.id
GROUP BY public.owners.full_name
ORDER BY most DESC
LIMIT 1

-- Vet clinic database: add "join table" for visits
-- Who was the last animal seen by William Tatcher?
SELECT public.animals.name FROM public.visits
join vets on public.visits.vets_id = public.vets.id
join animals on public.visits.animals_id = public.animals.id
where public.vets.name = 'William Tatcher'
ORDER BY public.visits.date DESC
LIMIT 1

-- How many different animals did Stephanie Mendez see?
SELECT DISTINCT COUNT(public.animals.name) FROM public.visits
join vets on public.visits.vets_id = public.vets.id
join animals on public.visits.animals_id = public.animals.id
where public.vets.name = 'Stephanie Mendez'

-- List all vets and their specialties, including vets with no specialties.
SELECT  public.vets.name, public.species.name FROM public.vets
left join specializations on public.specializations.vets_id = public.vets.id
left join species on public.specializations.species_id = public.species.id

-- List all animals that visited Stephanie Mendez between April 1st and August 30th, 2020.
SELECT public.animals.name FROM public.visits
join vets on public.visits.vets_id = public.vets.id
join animals on public.visits.animals_id = public.animals.id
where public.vets.name = 'Stephanie Mendez' and
public.visits.date  between '2020/04/01' and '2020/08/30'

-- What animal has the most visits to vets?
SELECT public.animals.name, COUNT(*) most FROM public.visits
join vets on public.visits.vets_id = public.vets.id
join animals on public.visits.animals_id = public.animals.id
GROUP BY  public.animals.name
ORDER BY most DESC
LIMIT 1

-- Who was Maisy Smith's first visit?
SELECT  public.animals.name  FROM public.visits
join vets on public.visits.vets_id = public.vets.id
join animals on public.visits.animals_id = public.animals.id
where public.vets.name = 'Maisy Smith'
ORDER BY public.visits.date ASC
LIMIT 1

-- Details for most recent visit: animal information, vet information, and date of visit.
SELECT  *  FROM public.visits
join vets on public.visits.vets_id = public.vets.id
join animals on public.visits.animals_id = public.animals.id
ORDER BY public.visits.date DESC
LIMIT 1

-- How many visits were with a vet that did not specialize in that animal's species?
SELECT COUNT(*)  FROM public.visits
LEFT join specializations on  public.visits.vets_id = public.specializations.vets_id
WHERE public.specializations.vets_id IS NULL;

-- What specialty should Maisy Smith consider getting? Look for the species she gets the most.
SELECT public.species.name FROM public.animals
  INNER JOIN public.species ON public.animals.species_id = public.species.id
  INNER JOIN public.visits ON public.animals.id = public.visits.animals_id
  INNER JOIN public.vets ON public.vets.id = public.visits.vets_id
  WHERE public.vets.name = 'Maisy Smith'
  GROUP BY public.species.name
  ORDER BY COUNT(*) DESC LIMIT 1;








