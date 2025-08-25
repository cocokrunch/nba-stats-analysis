-- average of the players
SELECT
	pl.player_name,
	ROUND(AVG(ps.pts),2) AS ave_pts,
    ROUND(AVG(ps.reb),2) AS ave_reb,
    ROUND(AVG(ps.ast),2) AS ave_ast
FROM player_stats AS ps
JOIN seasons AS se ON ps.season_id = se.season_id
JOIN players AS pl ON ps.player_id = pl.player_id
GROUP BY se.season, pl.player_name
ORDER BY ave_pts DESC
LIMIT 10;