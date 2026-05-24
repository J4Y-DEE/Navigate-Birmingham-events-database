SELECT
    v.venue_name,
    COUNT(e.event_id) AS total_events,
    AVG(e.attendee_count) AS average_attendance
FROM EVENT e
JOIN VENUE v
    ON e.venue_id = v.venue_id
GROUP BY v.venue_name
ORDER BY total_events DESC;

SELECT
    e.event_name,
    c.client_name,
    e.total_revenue,
    e.actual_cost,
    (e.total_revenue - e.actual_cost) AS profit
FROM EVENT e
JOIN CLIENT c
    ON e.client_id = c.client_id
ORDER BY profit DESC;

SELECT
    s.first_name || ' ' || s.last_name AS staff_member,
    COUNT(es.event_id) AS total_events,
    SUM(es.hours_worked) AS total_hours
FROM STAFF s
JOIN EVENT_STAFF es
    ON s.staff_id = es.staff_id
GROUP BY s.staff_id;

SELECT
    c.client_name,
    SUM(e.total_revenue) AS total_revenue
FROM CLIENT c
JOIN EVENT e
    ON c.client_id = e.client_id
GROUP BY c.client_id
ORDER BY total_revenue DESC;

SELECT
    eq.equipment_name,
    COUNT(ee.event_id) AS usage_count
FROM EQUIPMENT eq
JOIN EVENT_EQUIPMENT ee
    ON eq.equipment_id = ee.equipment_id
GROUP BY eq.equipment_name
ORDER BY usage_count DESC;