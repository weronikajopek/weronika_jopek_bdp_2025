-- Zamień obiekt4 na poligon. 
-- Jaki warunek musi być spełniony, aby można było wykonać to zadanie? Zapewnij te warunki.

-- Aby obiekt 4 mógł zostać zamieniony na poligon, musi być on domknięty.

UPDATE obiekty
SET geom = ST_MakePolygon(ST_AddPoint((geom)::geometry, ST_StartPoint(geom)))
WHERE nazwa = 'obiekt4';