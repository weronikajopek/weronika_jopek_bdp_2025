CREATE TABLE weronika_jopek.porto_dem AS
SELECT a.rid,
       ST_Clip(a.rast, b.geom, true) AS rast
FROM rasters.dem AS a,
     vectors.porto_parishes AS b
WHERE b.municipality ILIKE 'porto'
  AND ST_Intersects(a.rast, b.geom);


CREATE TABLE weronika_jopek.porto_tpi30 AS
SELECT ST_TPI(a.rast, 1) AS rast
FROM weronika_jopek.porto_dem AS a;


CREATE INDEX idx_porto_tpi30_rast_gist
ON weronika_jopek.porto_tpi30
USING gist (ST_ConvexHull(rast));


SELECT AddRasterConstraints(
    'weronika_jopek'::name,
    'porto_tpi30'::name,
    'rast'::name
);
