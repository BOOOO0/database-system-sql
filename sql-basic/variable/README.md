# 변수

- MySQL에서도 다른 프로그래밍 언어에서와 같이 변수를 선언하고 사용할 수 있습니다.

- 변수의 선언은 `SET`을 사용합니다. `SET @myVar = 5;`

- 선언한 변수를 테이블을 활용하는 쿼리문에 함께 사용할 수 있습니다.
  ```SQL
  SET @txt = '가수 이름 ==> ';
  SET @height = 166;
  SELECT @txt, mem_name FROM member WHERE height > @height ;
  ```
  출력은 @txt라는 열의 값은 모두 `가수 이름 ==> `일 것이고 그 옆엔 height 열의 값이 `@height`보다 큰 행 데이터들의 mem_name 열의 값이 있을 것입니다.
