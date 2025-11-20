DROP TABLE IF EXISTS weronika_jopek.intersects CASCADE;

CREATE TABLE weronika_jopek.intersects AS
SELECT a.rast, b.municipality
FROM rasters.dem AS a
JOIN vectors.porto_parishes AS b
  ON ST_Intersects(a.rast, b.geom)
WHERE b.municipality ILIKE 'porto';

ALTER TABLE weronika_jopek.intersects
ADD COLUMN rid SERIAL PRIMARY KEY;

CREATE INDEX idx_intersects_rast_gist
ON weronika_jopek.intersects
USING gist (ST_ConvexHull(rast));

SELECT AddRasterConstraints(
  'weronika_jopek'::name,
  'intersects'::name,
  'rast'::name
);

SELECT rid, ST_Metadata(rast), municipality
FROM weronika_jopek.intersects
LIMIT 5;