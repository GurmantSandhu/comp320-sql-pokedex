
SELECT sp.identifier, pre.identifier
FROM pokemon_species sp
INNER JOIN pokemon_species pre ON sp.evolves_from_species_id = pre.id
WHERE sp.generation_id = 1
AND pre.generation_id > 1;