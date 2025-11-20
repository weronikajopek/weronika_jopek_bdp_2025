CREATE OR REPLACE FUNCTION weronika_jopek.ndvi(
    value double precision[][][],
    pos integer[][],
    VARIADIC userargs text[]
)
RETURNS double precision
LANGUAGE plpgsql
IMMUTABLE
COST 1000
AS $$
BEGIN
    RETURN (value[2][1][1] - value[1][1][1]) /
           (value[2][1][1] + value[1][1][1]);
END;
$$;

CREATE TABLE weronika_jopek.porto_ndvi2 AS
WITH r AS (
SELECT a.rid,ST_Clip(a.rast, b.geom,true) AS rast
FROM rasters.landsat8 AS a, vectors.porto_parishes AS b
WHERE b.municipality ilike 'porto' and ST_Intersects(b.geom,a.rast)
)
SELECT
r.rid,ST_MapAlgebra(
r.rast, ARRAY[1,4],
'weronika_jopek.ndvi(double precision[],
integer[],text[])'::regprocedure, --> This is the function!
'32BF'::text
) AS rast
FROM r;


CREATE INDEX idx_porto_ndvi2_rast_gist ON weronika_jopek.porto_ndvi2
USING gist (ST_ConvexHull(rast));


SELECT AddRasterConstraints('weronika_jopek'::name,
'porto_ndvi2'::name,'rast'::name);