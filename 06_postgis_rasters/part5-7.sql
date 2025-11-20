WITH t AS (
    SELECT st_summarystats(ST_Union(a.rast)) AS stats
    FROM weronika_jopek.paranhos_dem AS a
)
SELECT (stats).min,(stats).max,(stats).mean FROM t;