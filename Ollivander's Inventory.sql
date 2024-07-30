SELECT
        MIN(IF(occupation = "Doctor", name, NULL)) AS "Doctor",
        MIN(IF(occupation = "Professor", name, NULL)) AS "Professor",
        MIN(IF(occupation = "Singer", name, NULL)) AS "Singer",
        MIN(IF(occupation = "Actor", name, NULL)) AS "Actor"
FROM
(
        SELECT
                name,
                occupation,
                ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY name) AS indexing
        FROM occupations
) AS short_table
GROUP BY indexing;