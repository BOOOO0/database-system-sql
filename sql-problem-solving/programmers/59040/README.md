```sql
SELECT ANIMAL_TYPE, COUNT(*) AS count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'CAT' OR ANIMAL_TYPE = 'DOG'
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE;
```