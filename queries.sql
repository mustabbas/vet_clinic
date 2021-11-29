/*Queries that provide answers to the questions from all projects.*/

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

