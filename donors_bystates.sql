ATTACH DATABASE 'donation_data.db' AS db1;

-- This query will be used to get the states with more than 80 donors
-- The GROUP BY, HVING, ORDER BY AND DESC functions will be used to query

SELECT state, COUNT(*)
FROM db1.Donation_Data
GROUP BY state
HAVING COUNT(*) > 80
ORDER BY COUNT(*) DESC;
