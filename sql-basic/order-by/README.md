# ORDER BY

- `ORDER BY`절은 조회된 데이터를 정렬할 때 사용합니다.

- `ORDER BY [열 이름]`의 형식을 가지고 사용하며 기본값은 오름차순 정렬입니다.

- `ORDER BY [열 이름] DESC`로 `DESC`를 덧붙이면 내림차순으로 정렬됩니다.

- 다음과 같이 쿼리문을 작성한다면 데뷔 일자를 기준으로 오름차순으로 정렬된 데이터를 얻을 수 있습니다.

  ```SQL
  SELECT
    mem_id, mem_name, height
  FROM
    market_db.member
  ORDER BY
    debut_date;
  ```

- `WHERE`문을 덧붙인다면 조건에 맞는 데이터들을 정렬해서 얻을 수도 있습니다.  
  `작성 순서에 유의해야 합니다.`
  ```SQL
  SELECT
    mem_id, mem_name, debut_date, height
  FROM
    market_db.member
  WHERE
    height >= 164
  ORDER BY
    height DESC;
  ```
- 복수의 열 이름을 정렬 기준으로 삼을 수도 있습니다.
  ```SQL
  SELECT
    mem_id, mem_name, debut_date, height
  FROM
    market_db.member
  WHERE
    height >= 164
  ORDER BY
    height DESC, debut_date ASC;
  ```
  위와 같은 상황에선 먼저 키를 기준으로 내림차순으로 정렬합니다. 그리고 키가 같은 데이터가 있다면 그 데이터들은 데뷔 일자를 기준으로 오름차순으로 정렬됩니다.
