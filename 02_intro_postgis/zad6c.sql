-- buildings - nazwy, pola powierzchni
-- posortowane alfabetycznie

SELECT
    name,
    ST_Area(geometry::geography) AS area
FROM buildings
ORDER BY name;