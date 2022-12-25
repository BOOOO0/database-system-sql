# INSERT

- `INSERT`문은 테이블에 새로운 행 데이터를 삽입할 때 사용합니다.

- 사용법은 `INSERT INTO [테이블 이름](열 이름1, 열이름 2, ...) VALUES (값1, 값2, ...)`입니다.

- `NOT NULL`이 아닌 열에는 NULL을 입력해서 아무 데이터도 입력하지 않을 수 있습니다.

- 다음과 같은 테이블을 생성한다면
  ```SQL
  CREATE TABLE boo0 (
    toy_id INT,
    toy_name CHAR(4),
    age INT
  );
  ```
  다음과 같이 원하는 행 데이터를 테이블에 삽입할 수 있습니다.
  ```SQL
  INSERT INTO boo0 VALUES(1,asd,7);
  INSERT INTO boo0(toy_id,toy_name) VALUES(1,asd);
  INSERT INTO boo0 VALUES(NULL,NULL,7);
  ```
