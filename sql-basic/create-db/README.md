# DB 생성

## Workbench에서 SQL 파일 열기

- [File] -> [Open SQL Script]

## 쿼리문으로 DB 생성하기

- ```SQL
  DROP DATABASE IF EXISTS market_db;
  CREATE DATABASE market_db;
  ```

  생성에 대한 명령을 하기 전에 프로그래밍을 할 때 값이 null인지 확인하듯이 `IF EXISTS`를 사용해서 이미 같은 이름의 DB가 있는지 확인하고 있다면 지우고 생성을 할 수 있습니다.

- ```SQL
  CREATE TABLE member
  ( mem_id  		CHAR(8) NOT NULL PRIMARY KEY,
    mem_name    	VARCHAR(10) NOT NULL,
    mem_number    INT NOT NULL,
    addr	  		CHAR(2) NOT NULL,
    phone1		CHAR(3),
    phone2		CHAR(8),
    height    	SMALLINT,
    debut_date	DATE
  );
  ```

  테이블의 설계에 대한 쿼리문입니다. 데이터 형식, 주요 키 설정, NOT NULL 여부 등을 열 이름에 할당할 수 있습니다.

- ```SQL
  INSERT INTO member VALUES('TWC', '트와이스', 9, '서울', '02', '11111111', 167, '2015.10.19');
  INSERT INTO member VALUES('BLK', '블랙핑크', 4, '경남', '055', '22222222', 163, '2016.08.08');
  INSERT INTO member VALUES('WMN', '여자친구', 6, '경기', '031', '33333333', 166, '2015.01.15');
  INSERT INTO member VALUES('OMY', '오마이걸', 7, '서울', NULL, NULL, 160, '2015.04.21');
  INSERT INTO member VALUES('GRL', '소녀시대', 8, '서울', '02', '44444444', 168, '2007.08.02');
  INSERT INTO member VALUES('ITZ', '잇지', 5, '경남', NULL, NULL, 167, '2019.02.12');
  INSERT INTO member VALUES('RED', '레드벨벳', 4, '경북', '054', '55555555', 161, '2014.08.01');
  INSERT INTO member VALUES('APN', '에이핑크', 6, '경기', '031', '77777777', 164, '2011.02.10');
  INSERT INTO member VALUES('SPC', '우주소녀', 13, '서울', '02', '88888888', 162, '2016.02.25');
  INSERT INTO member VALUES('MMU', '마마무', 4, '전남', '061', '99999999', 165, '2014.06.19');
  ```
  생성된 테이블에 행 데이터를 입력하는 쿼리문입니다. 각각의 열 이름의 규칙에 맞게 입력을 해야 합니다.
