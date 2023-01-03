# CROSS JOIN

- `CROSS JOIN`은 의미가 명확하지 않은 조인이기 때문에 자주 사용되진 않지만 대용량의 데이터를 단순 생성할 때 사용합니다.

- 사용 방법은 다음과 같고 `ON` 조건문을 사용할 수 없습니다.

  ```SQL
  SELECT *
  FROM buy
    CROSS JOIN member;
  ```

- 조인이 되는 방식은 buy 테이블의 모든 행 마다 member테이블의 모든 행을 대응해서 조인한 테이블을 조회합니다.

- buy 테이블에 5개의 행 member 테이블에 5개의 행이 있다면 25개의 행을 가진 테이블이 되는 것입니다.

- Workbench에서 sakila DB의 actor 테이블과 world DB의 country 테이블을 사용해서 여러 사람의 인적사항을 담은 대용량의 데이터를 생성해볼 수 있습니다.
  ```SQL
  CREATE TABLE cross_table
  SELECT *
  	FROM sakila.actor
  		CROSS JOIN world.country;
  ```
