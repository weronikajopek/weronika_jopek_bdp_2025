-- Znajdź wszystkie skrzyżowania, które znajdują się w odległości 200 m od linii zbudowanej z punktów w tabeli ‘input_points’.
-- Wykorzystaj tabelę T2019_STREET_NODE. Dokonaj reprojekcji geometrii, aby była zgodna z resztą tabel.

WITH input_line AS (
    SELECT ST_MakeLine(geom ORDER BY id) AS geom
    FROM input_points
)
SELECT sn.*
FROM street_node_2019 sn, input_line il
WHERE ST_DWithin(ST_Transform(sn.geom, 31466), il.geom, 200);
