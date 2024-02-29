WITH person_combinations AS (
    SELECT p1.name AS person_name2, p2.name AS person_name1, p1.address AS common_address
    FROM person p1
    JOIN person p2 ON p1.address = p2.address AND p1.id < p2.id
)
SELECT person_name1, person_name2, common_address
FROM person_combinations
ORDER BY person_name1, person_name2, common_address;
