# WHERE 조건문

- `WHERE`문은 가장 기본적인 데이터의 조회에 조건을 거는 명령어이고 사용시 규칙은 다음과 같습니다. `WHERE [조건]`

- 내가 특정 열에서 특정 값을 가진 데이터를 찾고자 할 때 사용할 수 있습니다.

- 일반적인 조건문처럼 다양한 조건의 표현이 가능합니다.

  ```SQL
  SELECT
    mem_name
  FROM
    market_db.member
  WHERE
    height >= 162;
  ```

  ```SQL
  SELECT
    mem_name
  FROM
    market_db.member
  WHERE
    height >= 162 OR mem_number >=6;
  ```

## BETWEEN ~ AND ~

- 특정 값 사이의 값은 `BETWEEN ~ AND ~`로 표현할 수도 있습니다.

  ```SQL
  SELECT
    mem_name
  FROM
    market_db.member
  WHERE
    height BETWEEN 162 AND 167; -- height >= 162 AND height <= 167;
  ```

## IN(~)

- `OR`의 반복은 `IN(~)`을 사용할 수 있습니다.
  ```SQL
  SELECT
    mem_name
  FROM
    market_db.member
  WHERE
    mem_addr IN ('경기','경북','전남');
  ```

## LIKE ~

- `LIKE`문은 문자열의 문자가 일부분만 일치하더라도 조회할 수 있는 조건을 사용할 수 있습니다.

### %

- `LIKE 우%`라는 조건을 사용한다면 `%`는 뒤에 어떤 문자가 얼만큼 있더라도 앞에 `우`라는 문자가 있다면 그 데이터를 조회합니다.

### \_(under_bar)

- `_`의 수가 문자의 수입니다. `LIKE __핑크`라는 조건을 사용한다면 `__핑크`는 뒤에 오는 2개의 문자가 `핑크`인 4개의 문자를 가진 문자열을 의미합니다.
