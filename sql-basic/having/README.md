# HAVING

- `GROUP BY`로 그룹화할 때 조건 처리를 추가할 때 사용합니다.

- 규칙은 `HAVING [조건]` 입니다.

- 조건 처리의 대상은 그룹화된 데이터이고 다음과 같이 사용할 수 있습니다.

  ```SQL
  SELECT
    mem_id, SUM(price*amount)
  FROM
    member
  GROUP BY
    mem_id
  HAVING
    SUM(price*amount) >= 1000;
  ```

- 여기서 주의할 점은 그룹화 된 결과에 조건 처리를 하는 것입니다. HAVING의 조건에 맞는 데이터만 그룹화 하는 것이 아닌 그룹화 된 결과에서 조건에 맞는지를 확인하는 것입니다. 이것은 쿼리문의 실행 순서에 대한 이해를 하면 헷갈리지 않을 수 있습니다.
