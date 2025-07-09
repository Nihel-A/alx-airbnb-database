
-- =====================================
-- USERS TABLE
-- =====================================
INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw_1', '08011112222', 'host', CURRENT_TIMESTAMP),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw_2', '08022223333', 'guest', CURRENT_TIMESTAMP),
('33333333-3333-3333-3333-333333333333', 'Cynthia', 'Ibrahim', 'cynthia@example.com', 'hashed_pw_3', '08033334444', 'guest', CURRENT_TIMESTAMP),
('44444444-4444-4444-4444-444444444444', 'David', 'Okafor', 'david@example.com', 'hashed_pw_4', '08044445555', 'host', CURRENT_TIMESTAMP),
('55555555-5555-5555-5555-555555555555', 'Ella', 'Chukwu', 'ella@example.com', 'hashed_pw_5', '08055556666', 'guest', CURRENT_TIMESTAMP),
('66666666-6666-6666-6666-666666666666', 'Femi', 'Balogun', 'femi@example.com', 'hashed_pw_6', '08066667777', 'host', CURRENT_TIMESTAMP),
('77777777-7777-7777-7777-777777777777', 'Grace', 'Adewale', 'grace@example.com', 'hashed_pw_7', '08077778888', 'guest', CURRENT_TIMESTAMP),
('88888888-8888-8888-8888-888888888888', 'Henry', 'Uzo', 'henry@example.com', 'hashed_pw_8', '08088889999', 'guest', CURRENT_TIMESTAMP),
('99999999-9999-9999-9999-999999999999', 'Ivy', 'Kalu', 'ivy@example.com', 'hashed_pw_9', '08099990000', 'host', CURRENT_TIMESTAMP),
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'John', 'Daniels', 'john@example.com', 'hashed_pw_10', '08100001111', 'admin', CURRENT_TIMESTAMP);

-- =====================================
-- PROPERTY TABLE
-- =====================================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
('prop-0001-uuid-0001-000000000001', '11111111-1111-1111-1111-111111111111', 'Lekki Studio', 'Cozy studio apartment in Lekki.', 'Lekki, Lagos', 30000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('prop-0002-uuid-0002-000000000002', '44444444-4444-4444-4444-444444444444', 'VI Beach House', 'Modern beach house with stunning view.', 'Victoria Island, Lagos', 85000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('prop-0003-uuid-0003-000000000003', '66666666-6666-6666-6666-666666666666', 'Yaba Flat', 'Affordable 2-bedroom flat in Yaba.', 'Yaba, Lagos', 25000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('prop-0004-uuid-0004-000000000004', '99999999-9999-9999-9999-999999999999', 'Ikeja Duplex', 'Spacious duplex for families.', 'Ikeja, Lagos', 60000.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- =====================================
-- BOOKING TABLE
-- =====================================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('book-0001-uuid-0001-000000000001', 'prop-0001-uuid-0001-000000000001', '22222222-2222-2222-2222-222222222222', '2025-08-01', '2025-08-03', 60000.00, 'confirmed', CURRENT_TIMESTAMP),
('book-0002-uuid-0002-000000000002', 'prop-0002-uuid-0002-000000000002', '33333333-3333-3333-3333-333333333333', '2025-08-05', '2025-08-07', 170000.00, 'pending', CURRENT_TIMESTAMP),
('book-0003-uuid-0003-000000000003', 'prop-0003-uuid-0003-000000000003', '55555555-5555-5555-5555-555555555555', '2025-08-10', '2025-08-13', 75000.00, 'confirmed', CURRENT_TIMESTAMP);

-- =====================================
-- PAYMENT TABLE
-- =====================================
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('pay-0001-uuid-0001-000000000001', 'book-0001-uuid-0001-000000000001', 60000.00, CURRENT_TIMESTAMP, 'credit_card'),
('pay-0002-uuid-0002-000000000002', 'book-0003-uuid-0003-000000000003', 75000.00, CURRENT_TIMESTAMP, 'paypal');

-- =====================================
-- REVIEW TABLE
-- =====================================
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('rev-0001-uuid-0001-000000000001', 'prop-0001-uuid-0001-000000000001', '22222222-2222-2222-2222-222222222222', 5, 'Very clean and comfortable. Would stay again!', CURRENT_TIMESTAMP),
('rev-0002-uuid-0002-000000000002', 'prop-0003-uuid-0003-000000000003', '55555555-5555-5555-5555-555555555555', 4, 'Great price for the location. Some noise at night.', CURRENT_TIMESTAMP);

-- =====================================
-- MESSAGE TABLE
-- =====================================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('msg-0001-uuid-0001-000000000001', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice, is Lekki Studio available for this weekend?', CURRENT_TIMESTAMP),
('msg-0002-uuid-0002-000000000002', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, it is. You can proceed to book.', CURRENT_TIMESTAMP),
('msg-0003-uuid-0003-000000000003', '55555555-5555-5555-5555-555555555555', '66666666-6666-6666-6666-666666666666', 'Hi Femi, how secure is the Yaba Flat?', CURRENT_TIMESTAMP);
