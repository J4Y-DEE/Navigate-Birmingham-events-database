.mode column
.headers on
.print === DATABASE INTEGRITY CHECK ===
PRAGMA integrity_check;
.print 
.print === FOREIGN KEY CHECK (NO ROWS = PASS) ===
PRAGMA foreign_key_check;
.print 
.print === TABLE ROW COUNTS ===
SELECT 'INDUSTRY' AS table_name, COUNT(*) AS row_count FROM INDUSTRY;
SELECT 'EVENT_TYPE' AS table_name, COUNT(*) AS row_count FROM EVENT_TYPE;
SELECT 'CATERING_TYPE' AS table_name, COUNT(*) AS row_count FROM CATERING_TYPE;
SELECT 'STAFF_ROLE' AS table_name, COUNT(*) AS row_count FROM STAFF_ROLE;
SELECT 'SKILL' AS table_name, COUNT(*) AS row_count FROM SKILL;
SELECT 'CLIENT' AS table_name, COUNT(*) AS row_count FROM CLIENT;
SELECT 'CLIENT_CONTACT' AS table_name, COUNT(*) AS row_count FROM CLIENT_CONTACT;
SELECT 'VENUE' AS table_name, COUNT(*) AS row_count FROM VENUE;
SELECT 'STAFF' AS table_name, COUNT(*) AS row_count FROM STAFF;
SELECT 'EVENT' AS table_name, COUNT(*) AS row_count FROM EVENT;
SELECT 'EQUIPMENT' AS table_name, COUNT(*) AS row_count FROM EQUIPMENT;
SELECT 'EVENT_EQUIPMENT' AS table_name, COUNT(*) AS row_count FROM EVENT_EQUIPMENT;
SELECT 'EVENT_STAFF' AS table_name, COUNT(*) AS row_count FROM EVENT_STAFF;
SELECT 'INVOICE' AS table_name, COUNT(*) AS row_count FROM INVOICE;
SELECT 'CLIENT_SATISFACTION' AS table_name, COUNT(*) AS row_count FROM CLIENT_SATISFACTION;
.print 
.print === BI QUERY 1: EVENTS BY VENUE ===
SELECT v.venue_name, COUNT(e.event_id) AS total_events, AVG(e.attendee_count) AS average_attendance
FROM EVENT e JOIN VENUE v ON e.venue_id = v.venue_id
GROUP BY v.venue_name ORDER BY total_events DESC;
.print 
.print === BI QUERY 2: EVENT PROFITABILITY ===
SELECT e.event_name, c.client_name, e.total_revenue, e.actual_cost, (e.total_revenue - e.actual_cost) AS profit
FROM EVENT e JOIN CLIENT c ON e.client_id = c.client_id
ORDER BY profit DESC;
.print 
.print === BI QUERY 3: STAFF WORKLOAD ===
SELECT s.first_name || ' ' || s.last_name AS staff_member, COUNT(es.event_id) AS total_events, SUM(es.hours_worked) AS total_hours
FROM STAFF s JOIN EVENT_STAFF es ON s.staff_id = es.staff_id
GROUP BY s.staff_id;
.print 
.print === BI QUERY 4: CLIENT REVENUE ===
SELECT c.client_name, SUM(e.total_revenue) AS total_revenue
FROM CLIENT c JOIN EVENT e ON c.client_id = e.client_id
GROUP BY c.client_id
ORDER BY total_revenue DESC;
.print 
.print === BI QUERY 5: EQUIPMENT USAGE ===
SELECT eq.equipment_name, COUNT(ee.event_id) AS usage_count
FROM EQUIPMENT eq JOIN EVENT_EQUIPMENT ee ON eq.equipment_id = ee.equipment_id
GROUP BY eq.equipment_name
ORDER BY usage_count DESC;
