SELECT id,
    name,
    line_name,
    ship_name,
    start_date,
    end_date,
    DATEDIFF(end_date, start_date) AS duration_days
FROM sailing
WHERE DATEDIFF(end_date, start_date) > 7
    AND start_date > CURRENT_DATE;