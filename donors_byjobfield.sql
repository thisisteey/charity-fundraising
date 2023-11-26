ATTACH DATABASE 'donation_data.db' AS db1;

-- This query gets the job fields with over 80 donors
SELECT job_field, COUNT(*)
FROM db1.Donation_Data
GROUP BY job_field
HAVING COUNT(*) > 80
ORDER BY COUNT(*) DESC;
