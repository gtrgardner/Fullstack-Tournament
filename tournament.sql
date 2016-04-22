-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE IF EXISTS tournament;

CREATE DATABASE tournament;

\c tournament;
DROP TABLE IF EXISTS player_register;
DROP TABLE IF EXISTS standings;
DROP TABLE IF EXISTS pairings;

CREATE TABLE player_register(
	id serial,
	name text,
	
	primary key(id)
	);


CREATE TABLE standings(
	id int null references player_register(id),
	name text,
	matches_played int,
	matches_won int
);

CREATE TABLE pairings(
	match_id serial primary key,
	id1 int null references player_register(id),
	name1 text,
	id2 int null references player_register(id),
	name2 text
);
