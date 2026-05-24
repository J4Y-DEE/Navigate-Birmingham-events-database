INSERT INTO CLIENT (client_id, industry_id, client_name)
VALUES
(1, 1, 'TechMidlands Ltd'),
(2, 2, 'GreenValley Foods'),
(3, 6, 'Urban Wellness'),
(4, 1, 'DataStream Systems'),
(5, 5, 'EcoMidlands Ltd'),
(6, 3, 'Innovation Birmingham'),
(7, 4, 'MediConnect Ltd');


INSERT INTO CLIENT_CONTACT (client_id, contact_name, email, phone, is_primary_contact)
VALUES
(1, 'Dr Sarah Patel', 'dr.patel@techmidlands.co.uk', '0121-555-0123', 1),
(2, 'Mark Williams', 'm.williams@greenvalley.com', '0121-555-0456', 1),
(3, 'Lisa Johnson', 'l.johnson@urbanwellness.com', '0121-555-0789', 1),
(4, 'Michael Brown', 'm.brown@datastream.co.uk', '0121-555-0234', 1),
(5, 'Amanda Green', 'a.green@ecomidlands.co.uk', '0121-555-0567', 1),
(6, 'Tom Clarke', 't.clarke@innovation.birmingham.gov.uk', '0121-555-0345', 1),
(7, 'Dr. Rachel Smith', 'r.smith@mediconnect.co.uk', '0121-555-0678', 1);


INSERT INTO VENUE (venue_name, venue_capacity, venue_location, venue_hourly_rate)
VALUES
('Canal Basin Suite', 150, 'Gas Street Basin', 120),
('Waterside Training Room', 50, 'Brindleyplace', 80),
('Warehouse Quarter', 200, 'Jewellery Quarter', 150),
('Lickey Hills Centre', 100, 'Lickey Hills', 200),
('ICC Birmingham', 300, 'Broad Street', 180),
('Custard Factory Studio', 40, 'Digbeth', 70),
('Mailbox Conference Hall', 250, 'Mailbox Birmingham', 200);


INSERT INTO STAFF (role_id, first_name, last_name, phone)
VALUES
(1, 'Aisha', 'Khan', '07123-456789'),
(2, 'James', 'Thompson', '07345-678901'),
(3, 'Dave', 'Marshall', '07234-567890'),
(1, 'Sue', 'Foster', '07456-789012');
