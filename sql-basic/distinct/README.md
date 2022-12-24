# DISTINCT

- `DISTINCT`는 중복된 결과를 하나만 조회할 수 있게 해줍니다.

- 열 이름 앞에 `DISTINCT`를 명시해서 사용합니다.  
  `SELECT DISTINCT addr FROM member;`

- `DISTINCT`는 특정 열 이름에 서로 다른 데이터가 총 몇 개인지 알아보는 데에 사용할 수 있습니다.

- 회원 테이블에서 국내 지역 중 회원들이 거주하는 지역이 어느 지역인지 알고자 합니다.
  ```SQL
  SELECT DISTINCT addr FROM member
  ```
  위와 같은 쿼리문을 작성한다면 회원들의 거주 지역이 중복없이 나열될 것입니다. 그렇게하면 전체 회원들의 거주 지역이 어느 지역인지 알 수 있습니다.
