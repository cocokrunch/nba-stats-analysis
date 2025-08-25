# 🏀 NBA Player Stats SQL


📌 Project Overview

This project explores NBA player statistics across seasons using SQL. The dataset includes player attributes, team assignments, draft details, and performance metrics.

The goal is to analyze player performance, team distribution, and trends over time.

This project demonstrates my ability to write complex SQL queries involving joins, aggregations, filtering, and window functions, while also analyzing the results to extract meaningful insights such as top scorers per season and team consistency.

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

# 🏀 NBA SQL Project – What I Found

1. Who really owned the scoreboard?

I was curious about which players were dropping the most points from 2000 to 2022. After digging through the data, it was no surprise names like LeBron, Curry, Harden, and Durant kept showing up. It was cool to see how different players had their “eras” where they were basically unstoppable.

📌 What I Found


<img width="472" height="420" alt="top_scorers" src="https://github.com/user-attachments/assets/9c185098-12ba-4d98-a683-7006d21b3a78" /> <img width="472" height="406" alt="top_scorers_2" src="https://github.com/user-attachments/assets/3dfcd5e6-0420-4891-a071-f814836afea9" />

+ From 2000 to 2022, the top scorers per season included LeBron James, Kevin Durant, and Stephen Curry.

+ In 2018, James Harden led with an average of 36.10 PPG, marking the highest in the dataset.


👤 Author

Kim D.
🎓 Computer Science Graduate | Aspiring Data Analyst
