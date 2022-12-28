# 데이터 형식

## 실수형

- 실수형은 소수점이 있는 숫자를 저장할 때 사용합니다.

- | 데이터 형식 | 바이트 수 |            설명             |
  | :---------: | :-------: | :-------------------------: |
  |    FLOAT    |     4     | 소수점 아래 7자리까지 표현  |
  |   DOUBLE    |     8     | 소수점 아래 15자리까지 표현 |

- 일반적인 프로그래밍 언어의 float, double과 같습니다.

## 날짜형

- 날짜형은 날짜 및 시간을 저장할 때 사용합니다.

- | 데이터 형식 | 바이트 수 |                          설명                          |
  | :---------: | :-------: | :----------------------------------------------------: |
  |    DATE     |     3     |         날짜만 저장, YYYY-MM-DD 형식으로 저장          |
  |    TIME     |     3     |          시간만 저장, HH:MM:SS 형식으로 저장           |
  |  DATETIME   |     8     | 날짜 및 시간을 저장, YYYY-MM-DD HH:MM:SS 형식으로 저장 |

- 구매 목록에 대한 테이블이 있다면 구매 시간은 DATETIME이 필요한 예라고 할 수 있습니다.