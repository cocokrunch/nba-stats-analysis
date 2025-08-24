SELECT ps.*, pl.player_name, tm.team_abbreviation, se.season
FROM player_stats ps
JOIN players pl ON ps.player_id = pl.player_id
JOIN teams tm ON ps.team_id = tm.team_id
JOIN seasons se ON ps.season_id = se.season_id
WHERE pl.player_name = 'Luka Doncic'
LIMIT 5;
