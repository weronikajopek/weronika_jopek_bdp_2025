-- BuidingA - geometria, pole powierzchni, obwód poligonu

SELECT
    ST_AsText(geometry::geography) AS wkt,
    ST_Area(geometry::geography) AS area,
    ST_Perimeter(geometry::geography) AS perimeter
FROM buildings
WHERE name = 'BuildingA';

