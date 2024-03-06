SELECT generated_date missing_date
FROM v_generated_dates gen
FULL JOIN person_visits pv
ON gen.generated_date = pv.visit_date
WHERE pv.visit_date IS NULL
ORDER BY missing_date;
