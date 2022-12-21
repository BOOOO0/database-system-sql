# MySQL Workbench를 사용한 테이블 생성 튜토리얼

## 테이블 설계하기

- 테이블을 작성하기 전에 테이블에 대한 설계가 필요합니다. 테이블을 설계한다는 것은 테이블의 열 이름과 데이터 형식 등을 정하는 것입니다.
  |열 이름|데이터 형식|최대 길이|Not null|
  |:-:|:-:|:-:|:-:|
  |member_id|CHAR|8|Yes|
  |memeber_name|CHAR|5|Yes|
  |member_addr|CHAR|20|No|

## Workbench

- 우리가 테이블을 생성하고 데이터베이스를 구축할 때 직접 쿼리문을 작성해야 합니다. 하지만 Workbench의 도움을 받으면 쿼리문을 Workbench가 대신 작성을 해줍니다.

## Schema 생성

- Workbench를 실행시키고 좌측 하단에 Schemas 탭을 클릭합니다. 그러면 Navigator 탭은 Schema들의 항목을 보여줍니다.

- 우리는 쇼핑몰의 DB를 구축해볼 것이기 때문에 탭을 우클릭해서
  `Create Schema`를 클릭합니다.

- 나타난 Schema 생성 탭에 Schema의 이름(shop_db)을 쓰고 우측 하단에 `Apply`를 클릭합니다.

- 그러면 Workbench가 Schema를 생성하기 위해 작성한 쿼리문을 보여줍니다.
  ```SQL
  CREATE SCHEMA 'shop_db';
  ```
  그리고 다시 `Apply`를 클릭하면 shop_db라는 이름의 Schema가 생성된 것을 탭에서 확인할 수 있습니다.

## 테이블 생성

- Schema 탭에서 shop_db의 tables를 우클릭해서 `create table`을 클릭합니다.

- 우선은 회원 테이블을 만들 것이기 때문에 테이블의 이름을 member라고 해주고 중앙에 Column Name 아래 빈칸을 더블클릭하면 열 이름과 데이터 형식 주요 키, Not null 등을 테이블의 계획에 맞게 지정해 줄 수 있습니다.

- 다 작성을 했다면 우측 하단에 `Apply`를 클릭합니다. 그러면 위에 Schema를 생성할 때 처럼 Workbench가 대신 작성해준 쿼리문을 볼 수 있고 좌측 탭에 member 테이블이 생성된 것을 볼 수 있습니다.

```SQL
CREATE TABLE `shop_db`.`member` (
  `member_id` CHAR(8) NOT NULL,
  `member_name` CHAR(5) NOT NULL,
  `member_addr` CHAR(20) NULL,
  PRIMARY KEY (`member_id`));
```

- 제품 테이블도 같은 방식으로 생성을 합니다.

```SQL
CREATE TABLE `shop_db`.`product`(
 `product_name`CHAR(4) NOT NULL,
 `cost`INT NOT NULL,
 `make_date`DATE NULL,
 `company`CHAR(5) NULL,
 `amount` INT NOT NULL,
  PRIMARY KEY (`product_name`));
```

## 데이터 입력하기

- 테이블을 생성했으므로 이제 행 데이터를 테이블에 입력해야 합니다.

- 생성해둔 회원 테이블 member를 우클릭해서 `Select Rows`를 클릭합니다.

- 나타난 창의 가운데에 우리가 앞서 테이블을 생성할 때 입력한 열 이름들이 써있는 테이블이 나타납니다. 각 열에 해당하는 데이터들을 입력해줍니다.

- `Apply`를 누르면 마찬가지로 작성된 쿼리문을 볼 수 있습니다.

```SQL
INSERT INTO `shop_db`.`member` (`member_id`, `member_name`, `member_addr`) VALUES ('boo0', '정부영', '서울시 도봉구 쌍문동');
INSERT INTO `shop_db`.`member` (`member_id`, `member_name`, `member_addr`) VALUES ('shkim07', '김성훈', '서울시 도봉구 쌍문동');
INSERT INTO `shop_db`.`member` (`member_id`, `member_name`, `member_addr`) VALUES ('steelo', '이승규', '서울시 도봉구 쌍문동');
INSERT INTO `shop_db`.`member` (`member_id`, `member_name`, `member_addr`) VALUES ('ferdi5', '신상현', '부산시 북구 화명동');
```

- 제품 테이블도 같은 방식으로 작성합니다.

```SQL
INSERT INTO `shop_db`.`product` (`product_name`, `cost`, `make_date`, `company`, `amount`) VALUES ('썬칩', '1500', '2022-12-01', '오리온', '17');
INSERT INTO `shop_db`.`product` (`product_name`, `cost`, `make_date`, `company`, `amount`) VALUES ('카스', '2500', '2022-10-01', 'OB', '3');
INSERT INTO `shop_db`.`product` (`product_name`, `cost`, `make_date`, `company`, `amount`) VALUES ('참이슬', '1700', '2022-10-01', '진로', '22');
```

## 테이블의 행 데이터 추가/수정/삭제하기

- 위의 데이터 입력과 같은 방식으로 `Select Rows`를 클릭한 후 새로운 행 데이터를 추가해줍니다.

```SQL
INSERT INTO `shop_db`.`member` (`member_id`, `member_name`, `member_addr`) VALUES ('jangjh97', '장재훈', '서울시 광진구 화양동');
```

- 작성된 테이블의 행 데이터에서 수정하고 싶은 부분을 더블클릭해서 수정해줍니다.

```SQL
UPDATE `shop_db`.`product` SET `cost` = '1900' WHERE (`product_name` = '참이슬');
```

- 삭제하고 싶은 행 데이터의 왼쪽 화살표를 클릭한 다음 화살표를 다시 우클릭을 합니다. 그리고 `Delete Row`를 클릭하면 해당 행을 삭제할 수 있습니다.

```SQL
DELETE FROM `shop_db`.`member` WHERE (`member_id` = 'jangjh97');
```

## 데이터베이스 구축 완성

- 이로써 데이터베이스의 구축이 완성이 되었습니다.
