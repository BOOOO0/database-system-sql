# 별칭

- 데이터를 조회할 때 열 이름에 별칭을 붙여서 알아보기 쉽게 만들 수 있습니다.

- 사용 방법은 `SELECT [열 이름] "별칭" FROM [테이블]`입니다.

- `AS`를 사용해서 `SELECT [열 이름] AS [별칭]`으로 사용할 수도 있습니다.

- `SELECT mem_id "멤버 이름", amout "총 구매 개수" FROM buy;`라는 쿼리문을 실행시킨다면 mem_id라는 열 이름은 멤버 이름이라는 별칭으로 대체되고 amout라는 열 이름은 총 구매 개수라는 별칭으로 대체되어서 데이터가 조회됩니다.

## 테이블 별칭

- 테이블의 이름에도 별칭을 주어서 조인을 사용할 때 활용할 수 있습니다.

- ```SQL
  SELECT B.mem_id, M.mem_name, B.prod_name, M.addr, CONCAT(M.phone1, M.phone2) AS '연락처'
  FROM buy B
  INNER JOIN member M
  ON B.mem_id = M.mem_id;
  ```

- 테이블 이름 뒤에 별칭을 작성하면 해당 별칭으로 테이블 이름을 표현할 수 있습니다.
