
SELECT LOWER(p.identifier), a.identifier
FROM pokemon p
INNER JOIN pokemon_abilities pa ON p.id = pa.pokemon_id
INNER JOIN abilities a ON pa.ability_id = a.id
WHERE pa.ability_id IN (
    SELECT ability_id
    FROM pokemon_abilities
    GROUP BY ability_id
    HAVING COUNT(DISTINCT pokemon_id) = 1
)
ORDER BY LOWER(p.identifier) ASC;