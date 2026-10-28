
SELECT LOWER(sp.identifier), COUNT(*)
FROM pokemon_species sp
INNER JOIN pokemon_evolution pe ON sp.id = pe.evolved_species_id
WHERE sp.generation_id = 1
GROUP BY sp.identifier
HAVING COUNT(*) > 1;