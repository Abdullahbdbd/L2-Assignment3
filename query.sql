-- query 1
SELECT 
    match_id,
    fixture,
    round(base_ticket_price, 0)
FROM Matches
WHERE tournament_category = 'Champions League'
AND match_status = 'Available';

-- query 2
SELECT 
    user_id,
    full_name,
    email
FROM Users
WHERE full_name ILIKE 'Tanvir%'
   OR full_name ILIKE '%Haque%';

-- query 3
SELECT 
    booking_id,
    user_id,
    match_id,
    COALESCE(payment_status, 'Action Required') AS systematic_status
FROM Bookings
WHERE payment_status IS NULL;

-- query 4
SELECT 
    b.booking_id,
    u.full_name,
    m.fixture,
    round(b.total_cost, 0)
FROM Bookings b
INNER JOIN Users u ON b.user_id = u.user_id
INNER JOIN Matches m ON b.match_id = m.match_id;

-- query 5
SELECT 
    u.user_id,
    u.full_name,
    b.booking_id
FROM Users u
LEFT JOIN Bookings b ON u.user_id = b.user_id;

-- query 6
SELECT 
    booking_id,
    match_id,
    round(total_cost,0)
FROM Bookings
WHERE total_cost > (
    SELECT AVG(total_cost) FROM Bookings
);

