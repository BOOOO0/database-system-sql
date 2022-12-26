# DELETE

- `DELETE`문은 행 데이터를 삭제할 때 사용할 수 있습니다.

- 사용 예시로는 회원 테이블에서 회원이 탈퇴를 해서 회원의 정보를 삭제해야 하는 경우에 `DELETE`문으로 해당 회원의 데이터를 삭제할 수 있습니다.

- `DELETE`문도 `WHERE`문을 사용해서 조건에 맞는 데이터에만 로직을 수행합니다.

- 일반적인 사용 예시는

  ```SQL
  DELETE FROM city_popul
    WHERE city_name = "Seoul";
  ```

  입니다.

- `LIKE`문을 사용해서 여러 데이터를 삭제하는 것도 가능합니다.

  ```SQL
  DELETE FROM city_popul
    WHERE city_name LIKE 'New%';
  ```

  이렇게 쿼리문을 작성해서 실행한다면 New로 시작하는 여러 도시들이 삭제될 것입니다. `%`는 몇개의 문자가 뒤에 오더라도 앞의 `New`를 포함한다면 다 포함하기 때문입니다.

- 위와 같은 상황에 `LIMIT`문을 사용해서 `New`로 시작하는 도시들 중 일부만 삭제되게 할 수도 있습니다.
  ```SQL
  DELETE FROM city_popul
    WHERE city_name LIKE 'NEW%'
    LIMIT 5;
  ```
