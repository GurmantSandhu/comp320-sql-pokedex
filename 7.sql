

SELECT LOWER(pre.identifier), COUNT(sp.id)
FROM pokemon_species pre
INNER JOIN pokemon_species sp ON sp.evolves_from_species_id = pre.id
GROUP BY pre.id, pre.identifier
HAVING COUNT(sp.id) > 1
ORDER BY pre.identifier;