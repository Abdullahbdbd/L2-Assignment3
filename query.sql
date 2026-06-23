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

