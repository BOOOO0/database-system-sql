# AUTO_INCREMENT

- `AUTO_INCREMENT`는 자동증가 옵션으로 `AUTO_INCREMENT`속성을 가진 열은 자동으로 중복이 없는 인덱스를 갖게 됩니다.

- 테이블을 생성할 때 사용할 경우에는 주요 키로 설정되는 열에만 사용할 수 있습니다.

- 그 후 `ALTER TABLE`문을 사용해서 `AUTO_INCREMENT`를 특정 값으로 초기화 할 수 있습니다. `ALTER TABLE mem_auto_idx AUTO_INCREMENT = 100;`

- 테이블이 이미 `AUTO_INCREMENT`속성을 가지고 있고 데이터가 삽입이 된 이후에 초기화를 한다면 초기화 이후 삽입되는 데이터부터 초기화된 값에서 시작하고 이전 값은 이전 인덱스를 그대로 가지고 있습니다.

## SET @@auto_increment_increment

- `SET @@auto_increment_increment`절을 사용해서 `AUTO_INCREMENT`의 증가량을 정해줄 수 있습니다. `SET @@auto_increment_increment=3`이라면 3씩 증가됩니다.

## LAST_INSERT_ID()

- `SELECT LAST_INSERT_ID()`는 `AUTO_INCREMENT`로 증가된 값이 현재 얼만큼 증가되었는지를 확인할 때 사용할 수 있습니다.

- ```
  LAST_INSERT_ID()는 INSERT 쿼리가 성공적으로 실행됐을 때 마지막 AUTO_INCREMENT값을 반환합니다. 데이터를 `bulk insert`한 경우엔 LAST_INSERT_ID()로 데이터의 수를 알아보는 것이 목적이라면 잘못된 값을 얻을 가능성이 있습니다.
  ```
