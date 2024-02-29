WITH DateGenerator AS (
    SELECT generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS missing_date
)
SELECT TO_CHAR(dg.missing_date, 'YYYY-MM-DD') AS missing_date
FROM DateGenerator dg
LEFT JOIN (
    SELECT DISTINCT pv.visit_date
    FROM person_visits pv
    WHERE pv.person_id IN (1, 2)
) pv ON dg.missing_date = pv.visit_date
WHERE pv.visit_date IS NULL
ORDER BY dg.missing_date;


