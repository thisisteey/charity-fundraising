ATTACH DATABASE 'donation_data.db' AS db1;
ATTACH DATABASE 'donor_data.db' AS db2;

-- This query will be used to join the two datasets needed for the analysis
SELECT *
FROM db1.Donation_Data
JOIN db2.Donor_Data2
ON db1.Donation_Data.id = db2.Donor_Data2.id;
