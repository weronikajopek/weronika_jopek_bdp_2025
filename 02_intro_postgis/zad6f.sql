-- pole powierzchni BuildingC w odległości > 0.5 od BuildingB

SELECT
    ST_Area(
        ST_Difference(
            (SELECT geometry FROM buildings WHERE name = 'BuildingC'),
            ST_Buffer(
                (SELECT geometry FROM buildings WHERE name = 'BuildingB'),
                0.5
            )
        )::geometry
    ) AS area_outside_buffer;