CREATE TABLE IF NOT EXISTS teams (
    team_key SERIAL PRIMARY KEY,
    team_id VARCHAR(15) NOT NULL,
    team_name VARCHAR(50) NOT NULL,
    season smallint NOT NULL
);

INSERT INTO teams (team_id, team_name, season)
SELECT DISTINCT
	rt.team_id,
	upper(g.team_a),
	SPLIT_PART(rt.season_code, 'E', 2)::smallint as season
FROM raw_teams rt
JOIN games g ON (rt.season_team_id = CONCAT(SPLIT_PART(g.season_code, 'E', 2), '_', g.team_id_a))
;