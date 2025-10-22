-- całkowita długość dróg
-- długość liczona jest w metrach
SELECT SUM(ST_Length(geometry::geography)) AS total_road_length
FROM roads;