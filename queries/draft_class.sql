SELECT 
    pl.player_name, 
    dr.draft_number, 
    dr.draft_year, 
    tm.team_abbreviation AS draft_team
FROM drafts AS dr
JOIN players AS pl 
    ON dr.player_id = pl.player_id
JOIN player_stats AS ps 
    ON pl.player_id = ps.player_id
JOIN teams AS tm 
    ON ps.team_id = tm.team_id
JOIN seasons AS se 
    ON ps.season_id = se.season_id
WHERE dr.draft_year = 2003 AND se.season LIKE CONCAT(dr.draft_year, '%')  -- rookie season
GROUP BY pl.player_name, dr.draft_number, dr.draft_year, tm.team_abbreviation
ORDER BY dr.draft_number;

