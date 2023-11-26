ATTACH DATABASE 'donation_data.db' AS db1;

-- These sets of queries will be used to perform aggregiate functions on the donation dataset

-- The COUNT() function is used to get the total number of donors in the database
SELECT COUNT(donation)
FROM db1.Donation_Data;

-- The SUM() function is used to get the sum of all donations in the database
SELECT SUM(donation)
FROM db1.Donation_Data;

-- The MAX() function is used to get the maximum donation in the database
SELECT MAX(donation)
FROM db1.Donation_Data;

-- The MIN() function is used to get the minimum donation in the database
SELECT MIN(donation)
FROM db1.Donation_Data;

-- The AVG() function is used to get the average donation and the ROUND() used along side is used to  round the avaerage donation to the desired decimal place
SELECT ROUND (AVG(donation), 2)
FROM db1.Donation_Data;
