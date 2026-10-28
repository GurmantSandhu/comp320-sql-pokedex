

SELECT LOWER(p.identifier)
FROM pokemon p
INNER JOIN pokemon_types pt1 ON p.id = pt1.pokemon_id
INNER JOIN types t1 ON pt1.type_id = t1.id
INNER JOIN pokemon_types pt2 ON p.id = pt2.pokemon_id
INNER JOIN types t2 ON pt2.type_id = t2.id
WHERE t1.identifier = 'flying'
AND t2.identifier = 'fighting';