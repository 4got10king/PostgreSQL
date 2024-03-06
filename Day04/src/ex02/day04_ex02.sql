CREATE VIEW v_generated_dates as
(
SELECT gen::date generated_date
FROM generate_series('2022-01-01', '2022-01-31', INTERVAL '1 day') gen
ORDER BY generated_date
);
