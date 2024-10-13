SELECT DATE_FORMAT(date_created, '%Y-%m') AS month,
    COUNT(*) AS total_reservations,
    SUM(
        CASE
            WHEN refundable = 1 THEN 1
            ELSE 0
        END
    ) / COUNT(*) * 100 AS refundable_percentage
FROM reservation
GROUP BY DATE_FORMAT(date_created, '%Y-%m');