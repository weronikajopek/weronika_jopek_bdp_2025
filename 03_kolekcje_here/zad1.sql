-- Utwórz tabelę obiekty. W tabeli umieść nazwy i geometrie obiektów przedstawionych poniżej.
-- Układ odniesienia ustal jako niezdefiniowany.

CREATE SCHEMA IF NOT EXISTS kolekcje;

CREATE TABLE IF NOT EXISTS obiekty (
    id SERIAL PRIMARY KEY,
    nazwa VARCHAR(50),
    geom geometry
);


-- obiekt 1
INSERT INTO obiekty(nazwa, geom) VALUES (
    'obiekt1',
    ST_GeomFromEWKT('COMPOUNDCURVE(
        (0 1, 1 1),                     
        CIRCULARSTRING(1 1, 2 0, 3 1),  
        CIRCULARSTRING(3 1, 4 2, 5 1),  
        (5 1, 6 1)                      
    )')
);


-- obiekt 2
INSERT INTO obiekty (nazwa, geom) VALUES (
    'obiekt2',
    ST_GeomFromEWKT(
        'CURVEPOLYGON(
            COMPOUNDCURVE(
                (10 6, 14 6),
                CIRCULARSTRING(14 6, 16 4, 14 2),
                CIRCULARSTRING(14 2, 12 0, 10 2),
                (10 2, 10 6)
            ),
            COMPOUNDCURVE(
                CIRCULARSTRING(11 2, 12 2, 13 2),
                CIRCULARSTRING(13 2, 12 1, 11 2)
            )
        )'
    )
);


-- obiekt 3
INSERT INTO obiekty (nazwa, geom) VALUES
('obiekt3',
 ST_GeomFromText('POLYGON((7 15, 10 17, 12 13, 7 15))') );


-- obiekt 4
INSERT INTO obiekty (nazwa, geom) VALUES
('obiekt4',
 ST_GeomFromText('LINESTRING(20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5)') );


-- obiekt 5
INSERT INTO obiekty (nazwa, geom) VALUES
('obiekt5',
 ST_GeomFromText('MULTIPOINT Z((30 30 59),(38 32 234))') );


-- obiekt 6
INSERT INTO obiekty (nazwa, geom) VALUES
('obiekt6',
 ST_GeomFromText('GEOMETRYCOLLECTION(LINESTRING(1 1, 3 2), POINT(4 2))') );

