-- Znajdź punkty przecięcia torów kolejowych (RAILWAYS) z ciekami (WATER_LINES). 
-- Zapisz znalezioną geometrię do osobnej tabeli o nazwie ‘T2019_KAR_BRIDGES’.

ALTER TABLE railways_2019
ALTER COLUMN geom TYPE geometry(MultiLineString, 31466)
USING ST_Transform(ST_Multi(geom), 31466);

ALTER TABLE water_lines_2019
ALTER COLUMN geom TYPE geometry(MultiLineString, 31466)
USING ST_Transform(ST_Multi(geom), 31466);

CREATE TABLE t2019_kar_bridges AS
SELECT ST_Intersection(r.geom, w.geom) AS geom
FROM railways_2019 r
JOIN water_lines_2019 w
  ON ST_Intersects(r.geom, w.geom)
WHERE NOT ST_IsEmpty(ST_Intersection(r.geom, w.geom));