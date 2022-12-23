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
