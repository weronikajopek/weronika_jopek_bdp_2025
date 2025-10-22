-- pole powierzchni tych czesci BuildingC i poligonu, które nie są wspólne dla tych 2 obiektów
SELECT
    ST_Area(
        ST_SymDifference(
            (SELECT geometry FROM buildings WHERE name = 'BuildingC'),
            ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))', 4326)
        )::geometry
    ) AS area_symmetric_difference;