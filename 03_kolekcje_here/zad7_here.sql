-- Policz jak wiele sklepów sportowych (‘Sporting Goods Store’ - tabela POIs) znajduje się w odległości 300 m od parków (LAND_USE_A).

ALTER TABLE landusea_2019
ALTER COLUMN geom TYPE geometry(MultiPolygon, 31466)
USING ST_Transform(ST_Multi(geom), 31466);

ALTER TABLE poi_2019
ALTER COLUMN geom TYPE geometry(Point, 31466)
USING ST_Transform(geom, 31466);

SELECT COUNT(*) AS sporting_stores
FROM poi_2019 p
JOIN landusea_2019 l
  ON ST_DWithin(p.geom, l.geom, 300)
WHERE p.type = 'Sporting Goods Store';
