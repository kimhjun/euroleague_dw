CREATE TABLE IF NOT EXISTS pbp (
	game_play_id varchar(40) PRIMARY KEY,
	game_id varchar(35) NOT NULL,
	game varchar(20) NOT NULL,
	round smallint NOT NULL,
	phase varchar(25) NOT NULL,
	season_code varchar(20) NOT NULL,
	quarter varchar(15) NOT NULL,
	type smallint NOT NULL,
	number_of_play smallint NOT NULL,
	team_id varchar(10),
	player_id varchar(15),
	play_type varchar(15),
	player varchar(50),
	team varchar(50),
	backnumber smallint,
	minute smallint,
	marker_time varchar(15),
	points_a smallint,
	points_b smallint,
	comment text,
	play_info text
);

COPY pbp
FROM
	'/Users/junn/Documents/codes/euroleague_dw/data/play_by_play.csv' DELIMITER ',' CSV HEADER;