ATTACH DATABASE 'donation_data.db' AS db1;
ATTACH DATABASE 'donor_data.db' AS db2;

-- These sets of query will be used to get the data from the datasets from the databases

SELECT * FROM db1.Donation_Data;

SELECT * FROM db2.Donor_Data2;
