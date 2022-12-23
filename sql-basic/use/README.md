# USE

- `USE`는 어떤 DB를 사용할 지 결정하는 명령어 입니다.

- 이전에 Workbench를 사용할 땐 스키마를 더블클릭해서 해당 DB를 사용했지만 이것도 쿼리문을 사용해서 가능합니다.
  ```SQL
  USE market_db;
  ```

## 다른 방식으로 내가 사용할 DB 결정 표현하기

- `USE`문을 사용하지 않고
  ```SQL
  SELECT * FROM market_db.member;
  ```
  테이블의 앞에 사용할 DB의 이름을 입력해주면 원하는 DB에 접근해서 원하는 테이블을 조회할 수 있습니다.
