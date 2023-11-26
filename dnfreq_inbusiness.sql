ATTACH DATABASE 'donation_data.db' AS db1;
ATTACH DATABASE 'donor_data.db' AS db2;

-- These queries gets the total number of donations of each donation frequency for the BUSINESS DEVELOPMENT job field

-- This query gets the total number of donations in the BUSINESS DEVELOPMENT job field with the donation frequency done ONCE
SELECT db1.Donation_Data.job_field, db2.Donor_Data2.donation_frequency, COUNT(donation_frequency)
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE job_field = 'Business Development'
AND donation_frequency = 'Once';

-- This query gets the total number of donations in the BUSINESS DEVELOPMENT job field with the donation frequency done WEEKLY
SELECT db1.Donation_Data.job_field, db2.Donor_Data2.donation_frequency, COUNT(donation_frequency)
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE job_field = 'Business Development'
AND donation_frequency = 'Weekly';

-- This query gets the total number of donations in the BUSINESS DEVELOPMENT job field with the donation frequency done MONTHLY
SELECT db1.Donation_Data.job_field, db2.Donor_Data2.donation_frequency, COUNT(donation_frequency)
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE job_field = 'Business Development'
AND donation_frequency = 'Monthly';

-- This query gets the total number of donations in the BUSINESS DEVELOPMENT job field with the donation frequency done YEARLY
SELECT db1.Donation_Data.job_field, db2.Donor_Data2.donation_frequency, COUNT(donation_frequency)
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id
WHERE job_field = 'Business Development'
AND donation_frequency = 'Yearly';
