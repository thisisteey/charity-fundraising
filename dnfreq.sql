ATTACH DATABASE 'donation_data.db' AS db1;
ATTACH DATABASE 'donor_data.db' AS db2;

-- These sets of query will be used to get the donation frequency which could be ONCE, WEEKLY, MONTHLY and YEARLY
-- The JOIN and WHERE clause will be used in querying the databases

-- Query to get the donations made ONCE and the sum
SELECT db1.Donation_Data.donation, db2.Donor_Data2.donation_frequency, SUM(donation)
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE donation_frequency = 'Once';

-- Query to get the donations made WEEKLY and the sum
SELECT db1.Donation_Data.donation, db2.Donor_Data2.donation_frequency, SUM(donation)
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE donation_frequency = 'Weekly';

-- Query to get the donations made MONTHLY and the sum
SELECT db1.Donation_Data.donation, db2.Donor_Data2.donation_frequency, SUM(donation)
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE donation_frequency = 'Monthly';

-- Query to get the donations made YEARLY and the sum
SELECT db1.Donation_Data.donation, db2.Donor_Data2.donation_frequency, SUM(donation)
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE donation_frequency = 'Yearly';
