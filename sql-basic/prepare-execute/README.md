# PREPARE - EXECUTE

- `PREPARE`문은 한 전체 쿼리문을 미리 준비시키는 역할을 합니다.

- `PREPARE [statement 이름] FROM '사용할 쿼리문 ?'`의 방식으로 사용하고 `?`은 `EXECUTE [statement 이름] USING [변수명]`으로 실행할 때 변수가 들어갈 자리 입니다.

- 사용할 수 있는 예시로 설명하겠습니다.

  ```SQL
  SET @count = 3;
  SELECT mem_name, height FROM member ORDER BY height LIMIT @count;
  ```

  위와 같은 쿼리문은 문법상 틀린 쿼리문입니다. `LIMIT`의 뒤에 변수를 사용해서 바로 조회를 할 수는 없습니다.

- 하지만 위의 조회 쿼리문을 `PREPARE`를 사용해서 준비를 시켜둔 다음 `EXECUTE`로 `?`에 @count 변수를 전달한다면 원하는 결과를 얻을 수 있습니다.
  ```SQL
  SET @count = 3;
  PREPARE mySQL FROM 'SELECT mem_name, height FROM member ORDER BY height LIMIT ?';
  EXECUTE mySQL USING @count;
  ```
