-- player with most games played per team
SELECT player_name, team_abbreviation, games
FROM (
    SELECT 
        pl.player_name, 
        tm.team_abbreviation, 
        SUM(ps.gp) AS games,
        ROW_NUMBER() OVER ( 					-- ranks players within their team
            PARTITION BY tm.team_abbreviation 
            ORDER BY SUM(ps.gp) DESC
        ) AS rn
    FROM player_stats AS ps
    JOIN players AS pl ON ps.player_id = pl.player_id
    JOIN teams AS tm ON ps.team_id = tm.team_id
    GROUP BY pl.player_name, tm.team_abbreviation
) AS ranked
WHERE rn = 1 									-- keeps only the top player for each team
ORDER BY team_abbreviation;