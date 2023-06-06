CREATE TABLE IF NOT EXISTS players (
    player_key VARCHAR(35) PRIMARY KEY,
    player_id VARCHAR(20) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    season smallint NOT NULL,
    team_id VARCHAR(10),
    backnumber smallint
);

INSERT INTO players (player_key, player_id, first_name, last_name, season, team_id, backnumber)
SELECT DISTINCT
    CONCAT(rp.season_player_id, '_', pbp.backnumber),
    rp.player_id,
    TRIM(SPLIT_PART(rp.player, ',', 2)) as first_name,
    TRIM(SPLIT_PART(rp.player, ',', 1)) as last_name,
    SPLIT_PART(rp.season_code, 'E', 2)::smallint as season,
    rp.team_id,
    pbp.backnumber as backnumber
FROM
    raw_players rp
JOIN
    pbp ON (rp.season_code = pbp.season_code AND rp.player_id = pbp.player_id AND rp.team_id = pbp.team_id)
WHERE backnumber is not null;