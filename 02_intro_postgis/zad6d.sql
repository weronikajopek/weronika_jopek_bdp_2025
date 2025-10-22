-- 2 budynki o najwiekszej powierzchni

SELECT
    name,
    ST_Perimeter(geometry::geography) AS perimeter
FROM buildings
ORDER BY ST_Area(geometry::geography) DESC
LIMIT 2;

