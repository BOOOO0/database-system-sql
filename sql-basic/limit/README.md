# LIMIT

- `LIMIT`은 데이터를 정한 개수만큼만 조회할 수 있게 해줍니다.

- ```SQL
  SELECT
    *
  FROM
    member
  LIMIT 3;
  ```

- `offset`을 지정해주고 사용할 수도 있습니다.
  ```SQL
  SELECT
    *
  FROM
    member
  LIMIT 2, 3;
  ```
  위와 같이 사용한다면 2번 인덱스를 가진 데이터부터 3개의 데이터를 조회할 수 있습니다.
