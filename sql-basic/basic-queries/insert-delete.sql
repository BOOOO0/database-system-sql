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
    
SELECT *
	FROM buy
		INNER JOIN member
        ON buy.mem_id = member.mem_id
        WHERE buy.mem_id = 'MMU';
        
SELECT buy.mem_id, mem_name, prod_name, addr, CONCAT(phone1,phone2) AS '연락처'
  FROM buy
  	INNER JOIN member
        ON buy.mem_id = member.mem_id;
        
SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
FROM member M
	LEFT OUTER JOIN buy B
    ON M.mem_id = B.mem_id;
    
CREATE TABLE cross_table
	SELECT *
		FROM sakila.actor
			CROSS JOIN world.country;
SELECT * FROM cross_table;

DROP TABLE cross_table;

CREATE TABLE emp_table (emp CHAR(4), manager CHAR(4), phone VARCHAR(8));

INSERT INTO emp_table VALUES('대표', NULL, '0000');
INSERT INTO emp_table VALUES('영업이사', '대표', '1111');
INSERT INTO emp_table VALUES('관리이사', '대표', '2222');
INSERT INTO emp_table VALUES('정보이사', '대표', '3333');
INSERT INTO emp_table VALUES('영업과장', '영업이사', '1111-1');
INSERT INTO emp_table VALUES('경리부장', '관리이사', '2222-1');
INSERT INTO emp_table VALUES('인사부장', '관리이사', '2222-2');
INSERT INTO emp_table VALUES('개발팀장', '정보이사', '3333-1');
INSERT INTO emp_table VALUES('개발주임', '정보이사', '3333-1-1');

SELECT A.emp "직원" , B.emp "직속상관", B.phone "직속상관연락처"
   FROM emp_table A
      INNER JOIN emp_table B
         ON A.manager = B.emp;
   WHERE A.emp = '경리부장';