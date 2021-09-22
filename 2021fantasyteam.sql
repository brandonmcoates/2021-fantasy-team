CREATE TABLE fantasy_team (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    player TEXT,
    position TEXT,
    team TEXT,
    week_1 REAL,
    week_2 REAL)
    ;
    
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Russell Wilson", "QB", "Seattle Seahawks", 26.9, 23.2);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Ezekiel Elliott", "RB", "Dallas Cowboys", 5.9, 17.7);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Austin Ekeler", "RB", "Los Angeles Chargers", 11.7, 22.5);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Justin Jefferson", "WR", "Minnesota Vikings", 12.5, 18.5);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Amari Cooper", "WR", "Dallas Cowboys", 38.9, 5.4);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Darren Waller", "TE", "Las Vegas Raiders", 26.5, 11.5);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Marvin Jones Jr.", "WR", "Jacksonville Jaguars", 18.7, 17.5);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Broncos Defense", "DEF", "Denver Broncos", 7.0, 11.0);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Matt Gay", "K", "Los Angeles Rams", 12.0, 9.0);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("James Robinson", "RB", "Jacksonville Jaguars", 8.4, 9.4);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Dak Prescott", "QB", "Dallas Cowboys", 27.3, 7.4);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Tyler Boyd", "WR", "Cincinnati Bengals", 6.2, 14.3);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("AJ Dillon", "RB", "Green Bay Packers", 3.6, 3.6);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Robert Tonyan", "TE", "Green Bay Packers", 2.8, 14.2);
INSERT INTO fantasy_team (player, position, team, week_1, week_2) VALUES ("Tony Pollard", "RB", "Dallas Cowboys", 8.3, 23.0);

SELECT id, player, MAX(week_1, week_2) AS max_points FROM fantasy_team
    ORDER BY max_points DESC;

SELECT id, player, ROUND((week_1 + week_2), 2) AS total_points FROM fantasy_team
    ORDER BY total_points DESC;
