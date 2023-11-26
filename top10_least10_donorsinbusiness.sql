ATTACH DATABASE 'donation_data.db' AS db1;
ATTACH DATABASE 'donor_data.db' AS db2;

-- These sets of query will be used to get the top 10 and least 10 donors in the business development field
-- The LEFT JOIN and LIMIT queries will be introduced here

-- The LEAST 10 donors in the BUSINESS DEVELOPMENT job field
SELECT db1.Donation_Data.gender, db1.Donation_Data.donation, db1.Donation_Data.job_field, db2.Donor_Data2.donation_frequency, db2.Donor_Data2.car, db2.Donor_Data2.university, db1.Donation_Data.state
FROM db1.Donation_Data
LEFT JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE job_field = 'Business Development'
ORDER BY donation ASC
LIMIT 10;

-- The TOP 10 donors in the BUSINESS DEVELOPMENT job field
SELECT db1.Donation_Data.gender, db1.Donation_Data.donation, db1.Donation_Data.job_field, db2.Donor_Data2.donation_frequency, db2.Donor_Data2.car, db2.Donor_Data2.university, db1.Donation_Data.state
FROM db1.Donation_Data
LEFT JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE job_field = 'Business Development'
ORDER BY donation DESC
LIMIT 10;
