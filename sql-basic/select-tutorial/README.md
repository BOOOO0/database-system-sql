# Select를 사용한 데이터베이스 조회

## 데이터베이스의 활용

- 앞에서 테이블을 생성하고 데이터를 입력해서 데이터베이스를 구축했습니다. 이제 데이터베이스를 활용할 방법에 대해 알아보겠습니다.

- 쿼리문을 작성해서 조회를 할 것이며 Workbench의 Query Tab에 작성을 해줍니다.

- 우리가 만든 `shop_db`를 Schema 탭에서 더블클릭하면 강조 표시가 되는데 이것은 앞으로 우리가 작성하는 쿼리문은 해당 DB에 사용된다는 의미입니다.

- 우선 모든 열 이름에 해당하는 데이터들을 조회해보겠습니다.

  ```SQL
  SELECT * FROM member;
  ```

- SELECT 뒤에는 열 이름이 오고 FROM의 뒤에는 테이블 이름이 옵니다. 그리고 `*`은 모든 열 이름을 선택하겠다는 의미입니다.

- 실행하기 위해 `execute`버튼을 누르거나 단축키 `Ctrl+Shift+Enter`를 눌러줍니다. 그러면 테이블에 작성했던 데이터들이 조회가 되는 것을 볼 수 있습니다.

- member_id와 member_name만 조회할 수도 있고
  ```SQL
  SELECT member_id,member_name FROM member;
  ```
  memeber_id가 `boo0`인 사람의 주소와 이름을 조회할 수도 있습니다.
  ```SQL
  SELECT member_addr,member_name FROM member WHERE  member_id = 'boo0';
  ```
