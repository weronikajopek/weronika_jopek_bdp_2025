-- Utwórz nową tabelę o nazwie ‘streets_reprojected’, 
-- która zawierać będzie dane z tabeli T2019_KAR_STREETS przetransformowane do układu współrzędnych DHDN.Berlin/Cassini.

CREATE TABLE streets_reprojected AS
SELECT gid, ST_Transform(geom, 31466) AS geom
FROM streets_2019;