-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
--DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;

\c tournament;
--DROP TABLE IF EXISTS Players;
--DROP TABLE IF EXISTS standings;
--DROP TABLE IF EXISTS Matches;

CREATE TABLE Players(
	id serial PRIMARY KEY,
	name text
	);


CREATE TABLE standings(
	id int null references Players(id),
	name text,
	matches_played int,
	matches_won int,
	matches_lost int
	);

CREATE TABLE Matches(
	match_id serial PRIMARY KEY,
	id1 int null references Players(id),
	name1 text,
	id2 int null references Players(id),
	name2 text
	);
