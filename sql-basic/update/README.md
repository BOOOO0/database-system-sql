# UPDATE

- `UPDATE`문은 기존에 입력되어 있던 데이터의 값을 변경할 수 있는 쿼리문입니다.

- 사용하는 방법은 다음과 같습니다. `UPDATE [테이블 이름] SET [열 이름] = '변경할 값' WHERE [조건]`

- `WHERE`문으로 조건을 걸지 않는다면 열의 모든 값이 변경됩니다. 예상치 못하게 데이터베이스를 망가뜨릴 수도 있으니 주의해야 합니다.

- `INSERT INTO ~ SELECT ~`를 실습하면서 생성했던 city_popul 테이블을 사용해서 사용 예시를 들면
  ```SQL
  UPDATE city_popul
    SET city_name = '서울'
    WHERE city_name = 'Seoul';
  ```
  이렇게 작성할 수 있습니다. 위 쿼리문의 결과는 조건문에 따라 city_name이 'Seoul'인 데이터의 city_name 열에 해당하는 데이터를 '서울'로 `UPDATE`합니다.
- 조건에 맞는 행을 찾아서 그 행의 여러 값을 변경할 수도 있습니다.
  ```SQL
  UPDATE city_popul
    SET city_name = '뉴욕', population = 0
    WHERE city_name = 'New York';
  ```
