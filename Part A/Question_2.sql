SELECT s.id,
    s.name,
    s.line_name,
    s.ship_name,
    COUNT(DISTINCT i.name) AS port_count
FROM sailing s
    JOIN itinerary_destination i ON s.id = i.sailing_id
WHERE i.type = 'port'
GROUP BY s.id,
    s.name,
    s.line_name,
    s.ship_name
ORDER BY port_count DESC
LIMIT 10;