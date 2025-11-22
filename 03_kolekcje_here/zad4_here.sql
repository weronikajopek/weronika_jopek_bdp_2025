-- Stwórz tabelę o nazwie ‘input_points’ i dodaj do niej dwa rekordy o geometrii punktowej.

DROP TABLE IF EXISTS input_points;

CREATE TABLE input_points (
    id SERIAL PRIMARY KEY,
    geom geometry(Point, 31466)
);

INSERT INTO input_points (geom) VALUES
  (ST_Transform(ST_SetSRID(ST_MakePoint(8.36093, 49.03174), 4326), 31466)),
  (ST_Transform(ST_SetSRID(ST_MakePoint(8.39876, 49.00644), 4326), 31466));
