# INSERT INTO ~ SELECT ~

- `INSERT`문을 `SELECT`문과 함께 사용하면 `SELECT`문을 통해 조회된 결과를 `INSERT`문을 사용해서 다른 테이블에 삽입할 수 있습니다.

- Workbench를 실행시켰을때 내장된 world DB의 city 테이블을 사용해서 예시를 들면 우선 새로운 테이블을 생성해서 새 테이블의 설계를 통해 city 테이블에서 가져올 데이터를 정합니다.

  ```SQL
  CREATE TABLE city_popul (
    city_name CHAR(35),
    population INT
  );
  ```

  그 다음 city 테이블의 Name 열과 Population 열을 조회하면서 city_popul 테이블에 삽입합니다.

  ```SQL
  INSERT INTO city_popul
    SELECT Name, Population FROM world.city;
  ```

- 삽입되는 테이블이 가진 열 이름별 데이터 형식과 삽입 될 조회된 결과의 열 이름 별 데이터 형식이 일치해야 합니다.
