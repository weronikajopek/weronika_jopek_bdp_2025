DROP TABLE weronika_jopek.porto_parishes; --> drop table porto_parishes first
CREATE TABLE weronika_jopek.porto_parishes AS
WITH r AS (
    SELECT rast FROM rasters.dem
    LIMIT 1
)
SELECT st_union(ST_AsRaster(a.geom,r.rast,'8BUI',a.id,-32767)) AS rast
FROM vectors.porto_parishes AS a, r
WHERE a.municipality ilike 'porto';