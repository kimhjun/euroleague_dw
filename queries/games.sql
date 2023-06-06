CREATE TABLE games (
    game_id character varying(30) PRIMARY KEY,
    fixture character varying(20) NOT NULL,
    date date NOT NULL,
    start_time time without time zone NOT NULL,
    round character varying(10) NOT NULL,
    phase character varying(30) NOT NULL,
    season_code character varying(20) NOT NULL,
    score_a smallint,
    score_b smallint,
    team_a character varying(50),
    team_b character varying(50),
    team_id_a character varying(10),
    team_id_b character varying(10),
    coach_a character varying(50),
    coach_b character varying(50),
    stadium character varying(50),
    capacity smallint
);