ATTACH DATABASE 'donation_data.db' AS db1;

-- This query will be used to get the job field with the highest donation
SELECT db1.Donation_Data.job_field, SUM(donation)
FROM db1.Donation_Data
GROUP BY job_field
ORDER BY SUM(donation) DESC;
