# SELF JOIN

- 셀프 조인은 테이블 자신이 자신과 조인되는 것입니다.

- 사용 방법은 다음과 같습니다. _같은 테이블을 사용하지만 별칭을 다르게 주어서 사용합니다._
  ```SQL
  SELECT [열1, 열2, ...]
  FROM [테이블 이름] [별칭A]
    INNER JOIN [테이블 이름] [별칭B]
    ON [조인될 조건]
  ```
- 사용 예시로 회사 직원들의 내부 조직에 대한 테이블에서 자신의 직책과 자신의 상관의 직책을 데이터로 가지는 테이블이 있다고 가정하고 특정 사원의 상관의 연락처를 알기 위해 셀프 조인을 사용해보겠습니다.

- 우선 직원 테이블을 생성해보겠습니다.

  ```SQL
  CREATE TABLE emp_table (emp CHAR(4), manager CHAR(4), phone VARCHAR(8));

    INSERT INTO emp_table VALUES('대표', NULL, '0000');
    INSERT INTO emp_table VALUES('영업이사', '대표', '1111');
    INSERT INTO emp_table VALUES('관리이사', '대표', '2222');
    INSERT INTO emp_table VALUES('정보이사', '대표', '3333');
    INSERT INTO emp_table VALUES('영업과장', '영업이사', '1111-1');
    INSERT INTO emp_table VALUES('경리부장', '관리이사', '2222-1');
    INSERT INTO emp_table VALUES('인사부장', '관리이사', '2222-2');
    INSERT INTO emp_table VALUES('개발팀장', '정보이사', '3333-1');
    INSERT INTO emp_table VALUES('개발주임', '정보이사', '3333-1-1');
  ```

- 그 다음 목표했던대로 조회를 해보겠습니다.

  ```SQL
  SELECT A.emp "직원" , B.emp "직속상관", B.phone "직속상관연락처"
   FROM emp_table A
      INNER JOIN emp_table B
         ON A.manager = B.emp
  ```

  여기서 B.emp는 직원 테이블에서 직속상관에 해당되는 manager 열의 데이터를 똑같은 emp_table이지만 별칭이 다른 B의 emp열로 조인시키고 B의 phone을 함께 조인시키면 직속상관의 연락처를 알 수 있는 테이블이 조회가 되는 것입니다.

- 하나의 예시지만 셀프 조인의 활용 방법은 테이블의 한 열을 같은 테이블의 다른 열로 대응해서 대응한 다른 열에 대한 내용을 함께 조인시켜서 활용하는 것 같습니다.
