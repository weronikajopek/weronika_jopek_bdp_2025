-- Znajdź ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych 
-- lub wybudowanych budynków, które znalezione zostały w zadaniu 1. 
-- Policz je wg ich kategorii.


WITH new_buildings AS (
    SELECT b19.geom
    FROM buildings_2019 b19
    LEFT JOIN buildings_2018 b18
        ON b19.geom = b18.geom
    WHERE b18.geom IS NULL
) 
SELECT poi19.type, COUNT(*) AS n
FROM poi_2019 poi19
LEFT JOIN poi_2018 poi18
        ON poi19.geom = poi18.geom
WHERE poi18.geom IS NULL
AND EXISTS (
    SELECT 1
    FROM new_buildings nb
    WHERE ST_DWithin(poi19.geom, nb.geom, 500)  
)
GROUP BY poi19.type;
