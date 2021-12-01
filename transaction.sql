BEGIN;

UPDATE public.animals
	SET species='unspecified';
ROLLBACK;

BEGIN;

UPDATE public.animals
	SET species='digimon' where name like '%mon';
UPDATE public.animals
	SET species='pokemon' where species IS NULL;
COMMIT;

BEGIN;

DELETE FROM public.animals;
ROLLBACK;

BEGIN;

SAVEPOINT remove;
DELETE FROM public.animals
where date_of_birth > '01-01-2022';

UPDATE public.animals
	SET weight_kg= -1* weight_kg;

ROLLBACK TO remove;

BEGIN;

UPDATE public.animals
	SET weight_kg= -1* weight_kg
	where weight_kg < 0;
    
COMMIT;
