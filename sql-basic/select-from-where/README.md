## WHERE 조건문

- `WHERE`문은 가장 기본적인 데이터의 조회에 조건을 거는 명령어이고 사용시 규칙은 다음과 같습니다. `WHERE [조건]`

- 내가 특정 열에서 특정 값을 가진 데이터를 찾고자 할 때 사용할 수 있습니다.

## SELECT ~ FROM ~ WHERE

- `SELECT [열 이름] FROM [테이블 이름] WHERE [조건]`

- `SELECT ~ FROM ~ `은 특정한 테이블에서 특정한 열에 해당하는 데이터들을 찾을 수 있는 구문입니다.

- 그 뒤에 `WHERE`을 덧붙인다면 `FROM`뒤에 입력된 테이블에서 `WHERE`뒤에 입력된 조건에 해당하는 행 데이터들을 찾고 그 행 데이터들의 데이터 중 `SELECT`뒤에 입력된 열 이름들에 해당하는 데이터들을 조회할 수 있습니다.

- 가독성을 위해 다음과 같이 작성해도 좋습니다.

  ```SQL
  SELECT
    mem_number, height, debut_date
  FROM
    market_db.member
  WHERE
    mem_name = '블랙핑크';
  ```

- 일반적인 조건문처럼 다양한 조건의 표현이 가능합니다.

  ```SQL
  SELECT
    mem_name
  FROM
    market_db.member
  WHERE
    height >= 162;
  ```

  ```SQL
  SELECT
    mem_name
  FROM
    market_db.member
  WHERE
    height >= 162 OR mem_number >=6;
  ```

- 특정 값 사이의 값은 `BETWEEN ~ AND ~`로 표현할 수도 있습니다.

  ```SQL
  SELECT
    mem_name
  FROM
    market_db.member
  WHERE
    height BETWEEN 162 AND 167; -- height >= 162 AND height <= 167;
  ```

- `OR`의 반복은 `IN(~)`을 사용할 수 있습니다.
  ```SQL
  SELECT
    mem_name
  FROM
    market_db.member
  WHERE
    mem_addr IN ('경기','경북','전남');
  ```
