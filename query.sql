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

