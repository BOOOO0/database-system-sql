# 데이터 형 변환

- MySQL에서도 데이터의 형 변환이 가능합니다. 문자형을 정수형으로 정수형을 문자형으로 바꾸거나 할 수 있습니다.

- 형 변환에서는 직접 함수를 사용해서 변환하는 `명시적인 변환`과 별도의 지시 없이 자연스럽게 변환되는 `암시적인 변환`이 있습니다.

## 함수를 이용한 명시적인 변환

- `CAST()`와 `CONVERT()`를 사용할 수 있습니다. 형식은 다르지만 동일한 기능을 합니다. 사용법은 다음과 같습니다.
  ```SQL
  CAST ( [값] AS [데이터 형식] ([길이]))
  CONVERT ( [값], [데이터 형식] ([길이]))
  ```

## 문자형을 날짜형으로 변환

- 문자형을 날짜형으로 변환할수도 있습니다. 문자의 형태가 `2022@12@28`과 같이 년/월/일이 같은 구분자로 구분되어 있다면 변환할 수 있습니다.
  ```SQL
  SELECT CAST('2022%12%28' AS DATE);
  ```
  출력은 `2022-12-28`의 날짜형 DATE 타입으로 나올 것입니다.

## 형 변환 좀 더 활용하기

- 형 변환을 다른 프로그래밍 언어에서 사용하는 것과 같이 더 활용할 수 있습니다.
  ```SQL
  SELECT
    num, CONCAT(CAST(price AS CHAR), 'x', CAST(amount AS CHAR), '=') '가격x수량', price*amount '구매액'
  FROM buy;
  ```
  `가격x수량`이라는 별칭을 가진 열의 값은 `문자형(price)x문자형(amount)`가 할당이 될 것입니다.