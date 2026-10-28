
SELECT LOWER(p.identifier), ps.base_stat
FROM pokemon p
INNER JOIN pokemon_game_indices gi ON p.id = gi.pokemon_id
INNER JOIN pokemon_stats ps ON p.id = ps.pokemon_id
INNER JOIN stats s ON ps.stat_id = s.id
WHERE gi.version_id = 1
AND s.identifier = 'attack'
ORDER BY ps.base_stat DESC
LIMIT 1;