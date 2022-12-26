USE market_db;

CREATE TABLE boo0 (
	toy_id INT,
    toy_name CHAR(4),
    age INT
);
DROP TABLE city_popul;
CREATE TABLE city_popul(
	city_name CHAR(35),
    population INT
);

INSERT INTO city_popul(city_name,population)
	SELECT Name, Population FROM world.city;
    
SELECT * FROM city_popul;
SELECT * FROM world.city;
DELETE FROM city_popul
	WHERE city_name LIKE 'NEW%'
    LIMIT 5;