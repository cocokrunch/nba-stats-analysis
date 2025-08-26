-- Load nba_raw into normalized tables

-- Insert unique players
INSERT INTO players (player_name, position, height, weight, college, country)
SELECT DISTINCT player_name, player_position, height, weight, college, country
FROM nba_raw;

-- Insert unique teams
INSERT INTO teams (team_name, team_abbreviation)
SELECT DISTINCT team_abbreviation, team_name
FROM nba_raw;

-- Insert seasons
INSERT INTO seasons (season)
SELECT DISTINCT season
FROM nba_raw;

-- insert player stats, I also used JOIN clause for the foreign keys
INSERT INTO player_stats (
    player_id, team_id, season_id,
    gp, pts, reb, ast, stl, blk, fg_pct, three_pct, ft_pct
)
SELECT 
    p.player_id,
    t.team_id,
    s.season_id,
    r.gp,
    r.pts,
    r.reb,
    r.ast,
    r.stl,
    r.blk,
    r.fg_pct,
    r.fg3_pct,
    r.ft_pct
FROM nba_raw r
JOIN players p ON r.player_name = p.player_name
JOIN teams t ON r.team_abbreviation = t.team_abbreviation
JOIN seasons s ON r.season = s.season;

-- insert drafts data
INSERT INTO drafts (player_id, draft_year, draft_round, draft_number)
SELECT 
    p.player_id,
    r.draft_year,
    r.draft_round,
    r.draft_number
FROM nba_raw r
JOIN players p ON r.player_name = p.player_name
WHERE r.draft_year IS NOT NULL;