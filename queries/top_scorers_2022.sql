SELECT 
	pl.player_name, 
	tm.team_abbreviation AS Team, 
	ROUND(AVG(ps.pts), 2) AS total_points,
    s.season
FROM player_stats AS ps
JOIN players AS pl ON ps.player_id = pl.player_id
JOIN teams AS tm ON ps.team_id = tm.team_id
JOIN seasons AS s ON ps.season_id = s.season_id
WHERE s.season BETWEEN 2010 AND 2022
GROUP BY pl.player_name, tm.team_abbreviation, s.season
HAVING total_points > 0
ORDER BY total_points DESC
LIMIT 10; -- Limit by Top 10 only
