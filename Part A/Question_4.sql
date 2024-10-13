SELECT SUM(
        CASE
            WHEN (s1.name != s2.name) THEN 1
            ELSE 0
        END
    ) / COUNT(*) * 100 AS open_jaw_percentage,
    SUM(
        CASE
            WHEN (s1.name = s2.name) THEN 1
            ELSE 0
        END
    ) / COUNT(*) * 100 AS closed_loop_percentage
FROM sailing s1
    JOIN sailing s2 ON s1.id = s2.id
WHERE s1.start_date = s2.start_date
    AND s1.end_date = s2.end_date;