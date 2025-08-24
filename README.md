# 🏀 NBA Player Stats SQL


📌 Project Overview

This project explores NBA player statistics across seasons using SQL. The dataset includes player attributes, team assignments, draft details, and performance metrics.

The goal is to analyze player performance, team distribution, and trends over time while demonstrating strong SQL querying and analytical skills.

🗂️ Dataset

Source: NBA all-seasons dataset (1996–2022)

Rows: Each row represents a player’s stats in a given season.

Key Features:

Player info (name, age, height, weight, college, country)

Team info (team abbreviation, season)

Draft info (year, round, pick)

Performance stats (points, rebounds, assists, net rating, usage %, TS%)

🛠️ Tools & Technologies

SQL: PostgreSQL / MySQL

Data Source: CSV file imported into SQL tables

Kaggle Link: https://www.kaggle.com/datasets/justinas/nba-players-data/data


# 📌 Entity-Relationship Diagram (EER)
<img width="500" height="500" alt="image" src="https://github.com/user-attachments/assets/d4c64245-d0cb-4584-9a71-909ad1b310d9" />

The EER diagram represents the structure of the NBA dataset in a relational database. It consists of the following main entities:

Players – Contains player information such as name, position, height, and weight.

Teams – Stores NBA team details with abbreviations and full names.

Seasons – Represents NBA seasons (e.g., 2010, 2023) and links statistics to a specific year.

Player Stats – Holds statistical performance data (points, rebounds, assists, etc.), linked to players, teams, and seasons.

Drafts – Records draft information including draft year, round, and pick number for each player.

This structure allows efficient querying of player performance across seasons, teams, and career history, while also supporting analysis such as top scorers per season or comparisons of team performance.


👤 Author

Kim D.
🎓 Computer Science Graduate | Aspiring Data Analyst
