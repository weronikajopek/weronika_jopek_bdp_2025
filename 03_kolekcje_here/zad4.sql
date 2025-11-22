-- W tabeli obiekty, jako obiekt 7 zapisz obiekt złożony z obiektu 3 i obiektu 4.

INSERT INTO obiekty (nazwa, geom)
SELECT 'obiekt7', ST_Union(
    (SELECT geom FROM obiekty WHERE nazwa = 'obiekt3'),
    (SELECT geom FROM obiekty WHERE nazwa = 'obiekt4')
);
