CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(POLYGON, 4326),
    name VARCHAR(255)
);

CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(LINESTRING, 4326),
    name VARCHAR(255)
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
    geometry GEOMETRY(POINT, 4326),
    name VARCHAR(255)
);
