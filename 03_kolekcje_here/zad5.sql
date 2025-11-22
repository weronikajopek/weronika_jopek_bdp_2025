-- Wyznacz pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone wokół obiektów nie zawierających łuków.

SELECT nazwa,
       ST_Area(ST_Buffer(geom, 5)) AS pole_bufora
FROM obiekty
WHERE NOT ST_HasArc(geom);