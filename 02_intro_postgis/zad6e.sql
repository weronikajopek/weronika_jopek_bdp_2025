-- najkrótsza odległość pomiędzy BuildingC a K
SELECT
    ST_Distance(
        (SELECT geometry FROM buildings WHERE name = 'BuildingC')::geography,
        (SELECT geometry FROM poi WHERE name = 'K')::geography
    ) AS distance_BuildingC_PointK;