ATTACH DATABASE 'donation_data.db' AS db1;
ATTACH DATABASE 'donor_data.db' AS db2;

-- These queries will be used to get donors with univeristy degrees that contributed between 250 and 500
-- The JOIN and WHERE clause, will be used combined with the AND, BETWEEN ORDER BY AND DESC queries

-- This query gets FEMALE donors with univeristy degrees the contribute between 250 and 500
SELECT db1.Donation_Data.gender, db1.Donation_Data.donation, db2.Donor_Data2.university, db1.Donation_Data.job_field
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE gender = 'Female'
AND university != 'NULL'
AND donation BETWEEN 250 AND 500
ORDER BY donation DESC;

-- This query gets MALE donors with univeristy degrees the contribute between 250 and 500
SELECT db1.Donation_Data.gender, db1.Donation_Data.donation, db2.Donor_Data2.university, db1.Donation_Data.job_field
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE gender = 'Male'
AND university != 'NULL'
AND donation BETWEEN 250 AND 500
ORDER BY donation DESC;
