INSERT INTO EVENT (
    event_id,
    client_id,
    venue_id,
    coordinator_staff_id,
    event_type_id,
    catering_type_id,
    event_name,
    event_date,
    event_time,
    attendee_count,
    duration_hours,
    booking_date,
    event_status,
    special_requirements,
    actual_cost,
    total_revenue
)
VALUES
(
    1,
    1,
    1,
    1,
    3,
    1,
    'TechMidlands Product Launch',
    '2024-03-15',
    '14:00',
    120,
    4,
    '2024-02-01',
    'Completed',
    'Wheelchair accessible',
    2500,
    3500
),
(
    2,
    2,
    2,
    3,
    2,
    2,
    'GreenValley Training Day',
    '2024-03-18',
    '09:00',
    35,
    8,
    '2024-02-15',
    'Completed',
    'None',
    900,
    1250
);

INSERT INTO EQUIPMENT (equipment_name)
VALUES
('Projector'),
('Sound System'),
('Stage Lighting'),
('Microphones'),
('Whiteboard'),
('Laptops');

INSERT INTO EVENT_EQUIPMENT (event_id, equipment_id)
VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6);

INSERT INTO EVENT_STAFF (
    event_id,
    staff_id,
    assignment_role,
    hours_worked,
    overtime_hours
)
VALUES
(1, 1, 'Lead Coordinator', 8, 2),
(2, 3, 'Workshop Coordinator', 8, 0);

INSERT INTO INVOICE (
    event_id,
    invoice_date,
    invoice_amount,
    vat_amount,
    payment_status
)
VALUES
(1, '2024-03-16', 3500, 700, 'Paid'),
(2, '2024-03-19', 1250, 250, 'Pending');

INSERT INTO CLIENT_SATISFACTION (
    event_id,
    satisfaction_score,
    feedback_comments
)
VALUES
(1, 9, 'Excellent organisation and communication'),
(2, 8, 'Well managed workshop');