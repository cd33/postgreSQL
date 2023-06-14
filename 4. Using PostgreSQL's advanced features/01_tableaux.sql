SELECT ARRAY[1, 2, 3]

SELECT (ARRAY(
SELECT extract(year from generate_series)::int
FROM generate_series('2020-01-01'::date, '2030-01-01'::date, '1 year')
))[2:4]