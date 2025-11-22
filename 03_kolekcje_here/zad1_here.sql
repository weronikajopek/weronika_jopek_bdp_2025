-- Znajdź budynki, które zostały wybudowane lub wyremontowane na przestrzeni roku (zmiana pomiędzy 2018 a 2019).

SELECT b19.*
FROM buildings_2019 b19
LEFT JOIN buildings_2018 b18
    ON ST_Equals(b19.geom, b18.geom)
WHERE b18.geom IS NULL;
