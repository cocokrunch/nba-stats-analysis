-- Create Database NBA
CREATE DATABASE nba_stats;
USE nba_stats;

-- Create table for players
CREATE TABLE players (
	player_id INT AUTO_INCREMENT PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    age INT,
    player_height DECIMAL(5,2),
    player_weight DECIMAL(5,2),
    college VARCHAR(100),
    country VARCHAR(50)
);

-- Create table for Teams
CREATE TABLE Teams (
	team_id INT AUTO_INCREMENT PRIMARY KEY,
    team_abbreviation VARCHAR(5) UNIQUE NOT NULL
);

-- Create table for seasons
CREATE TABLE Seasons (
	season_id INT AUTO_INCREMENT PRIMARY KEY,
    season VARCHAR(10) UNIQUE NOT NULL
);

-- Create table for drafts
CREATE TABLE Drafts (
	draft_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    draft_year INT,
    draft_round INT,
    draft_number INT,
    FOREIGN KEY (player_id) REFERENCES Players(player_id)
);

-- Create table for Player Stats
CREATE TABLE Player_Stats (
	stat_id INT AUTO_INCREMENT PRIMARY KEY,
    player_id INT,
    team_id INT,
    season_id INT,
    gp INT,
    pts DECIMAL(5,2),
    reb DECIMAL(5,2),
    ast DECIMAL(5,2),
    net_rating DECIMAL(5,2),
    oreb_pct DECIMAL(5,2),
    dreb_pct DECIMAL(5,2),
    usg_pct DECIMAL(5,2),
    ts_pct DECIMAL(5,2),
    ast_pct DECIMAL(5,2),
    FOREIGN KEY (player_id) REFERENCES Players(player_id),
    FOREIGN KEY (team_id) REFERENCES Teams(team_id),
    FOREIGN KEY (season_id) REFERENCES Seasons(season_id)
);

