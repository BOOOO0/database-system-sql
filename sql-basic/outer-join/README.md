# OUTER JOIN

- 내부 조인은 양쪽 테이블 모두 존재하는 데이터만을 조회하지만 외부 조인은 한쪽에만 있는 데이터도 조회할 수 있습니다.

- 자주 사용되지 않지만 숙지해두면 활용 가능성이 높습니다.

- 사용 방법은 다음과 같습니다.

  ```SQL
  SELECT [열1, 열2, ...]
  FROM [첫번째 테이블 이름(LEFT 테이블)]
    [LEFT or RIGHT or FULL] OUTER JOIN [두번째 테이블 이름(RIGHT 테이블)]
    ON [조인될 조건];
  ```

  `FROM`뒤에 오는 테이블이 LEFT 테이블이 되고 `OUTER JOIN`뒤에 오는 테이블이 RIGHT 테이블이 됩니다.

- 그리고 외부 조인에서 기준이 되는 테이블은 `OUTER JOIN`앞에 명시된 방향입니다.

- 내부 조인에서 실습했던 것과 같이 배송 정보에 대한 테이블을 조회해보겠습니다.

  ```SQL
  SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
  FROM member M
  	LEFT OUTER JOIN buy B
    ON M.mem_id = B.mem_id;
  ```

- `LEFT OUTER JOIN`으로 했기 때문에 LEFT TABLE인 member테이블을 기준으로 외부 조인을 하게 됩니다. 다시 말하면 LEFT 테이블인 member테이블의 데이터는 모두 조회가 되기로 약속하고 RIGHT 테이블인 buy 테이블에서 조건에 맞는 데이터들을 조인해오는 것입니다.

- 회원 테이블의 데이터는 반드시 조회가 됩니다. 그렇기 때문에 구매를 하지 않았더라도 쿼리문으로 설명하면 B.prod_name 항목을 가지지 않는 buy테이블에 자신의 데이터를 가지지 않은 member테이블의 데이터라도 B.prod_name을 NULL로 가진 채로 조회가 됩니다.

- 이해하기 더 쉽게 위의 쿼리문을 기준만 바꿔서 다시 실행해보겠습니다.

  ```SQL
  SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
  FROM member M
  	RIGHT OUTER JOIN buy B
    ON M.mem_id = B.mem_id;
  ```

  위 쿼리문의 결과는 내부 조인에서 구매 목록이 있는 회원만 조회한 결과와 같은 결과가 나옵니다.

- **_외부 조인의 개념에 집중하기보다 외부 조인을 통해서 어떤 결과를 얻을 수 있는 지, 그 방법을 지금 내가 다루는 테이블들에 어떻게 적용할 수 있을 지에 집중하는 것이 좋을 것 같습니다._**
