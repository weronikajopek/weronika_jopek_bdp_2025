-- buildings
INSERT INTO buildings(name, geometry) VALUES
('BuildingA', ST_GeomFromText('POLYGON((8 1.5, 10.5 1.5, 10.5 4, 8 4, 8 1.5))')),
('BuildingB', ST_GeomFromText('POLYGON((4 5, 6 5, 6 7, 4 7, 4 5))')),
('BuildingC', ST_GeomFromText('POLYGON((3 6, 5 6, 5 8, 3 8, 3 6))')),
('BuildingD', ST_GeomFromText('POLYGON((9 8, 10 8, 10 9, 9 9, 9 8))')),
('BuildingE', ST_GeomFromText('POLYGON((1 1, 2 1, 2 2, 1 2, 1 1))'));

-- roads
INSERT INTO roads (name, geometry) VALUES
('RoadX', ST_GeomFromText('LINESTRING(0 4.5, 12 4.5)')),
('RoadY', ST_GeomFromText('LINESTRING(7.5 0, 7.5 10.5)'));

--  points
INSERT INTO poi (name, geometry) VALUES
('G', ST_GeomFromText('POINT(1 3.5)')),
('H', ST_GeomFromText('POINT(5.5 1.5)')),
('I', ST_GeomFromText('POINT(9.5 5.6)')),
('J', ST_GeomFromText('POINT(6.5 6)')),
('K', ST_GeomFromText('POINT(6 9.5)'));