# 스토어드 프로시저

- 스토어드 프로시저는 MySQL에서 제공하는 프로그래밍 기능입니다. 스토어드 프로시저를 통해서 MySQL에서도 프로그래밍 언어에서 사용하는 연산식, 조건문, 반복문 등을 사용할 수 있습니다.

## 스토어드 프로시저 사용하기

- ```SQL
  SELECT * FROM member WHERE member_name = '정부영';
  SELECT * FROM product WHERE product_name = '참이슬';
  ```

  위와 같은 쿼리문이 반복적으로 사용된다고 가정했을 때 스토어드 프로시저를 사용해서 반복되는 것을 더 효율적인 방식으로 바꿀 수 있습니다.

- 우선 프로시저에 두 쿼리문을 할당을 해줍니다.

  ```SQL
  DELIMITER //
  CREATE PROCEDURE myProc()
  BEGIN
    SELECT * FROM member WHERE member_name = '정부영';
    SELECT * FROM product WHERE product_name = '참이슬';
  END //
  DELIMITER ;
  ```

  `myProc`이라는 이름의 새로운 프로시저를 생성했고 그 프로시저는 두개의 쿼리문을 가지고 있습니다.

- 이제 생성한 프로시저를 호출합니다.
  ```SQL
  CALL myProc();
  ```
  그러면 두개의 result를 확인할 수 있고 하나는 회원 테이블에서 조회된 결과 다른 하나는 제품 테이블에서 조회된 결과로 원하는 결과를 얻었음을 알 수 있습니다.
