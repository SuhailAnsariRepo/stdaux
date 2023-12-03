-- Query 1
SELECT 
    CustomerID,
    CASE 
        WHEN TransType = 'C' THEN 'Credit'
        WHEN TransType = 'D' THEN 'Debit'
    END AS TransType,
    Amount,
    TO_CHAR(TransDate, 'MM/DD/YYYY') AS Transdate,
    TO_CHAR(TransDate, 'Day') AS WeekDay
FROM sqltest1;

-- Query 2
SELECT 
    CustomerID,
    TO_CHAR(TransDate, 'MM/DD/YYYY') AS Transdate,
    CASE WHEN TransType = 'C' THEN Amount ELSE '0.00' END AS "Credit Amount",
    CASE WHEN TransType = 'D' THEN Amount ELSE '0.00' END AS "Debit Amount"
FROM sqltest1;

-- Query 3
SELECT 
    CustomerID,
    TO_CHAR(TransDate, 'MM/DD/YYYY') AS Transdate,
    CASE WHEN TransType = 'C' THEN Amount ELSE '0.00' END AS "Credit Amount",
    CASE WHEN TransType = 'D' THEN Amount ELSE '0.00' END AS "Debit Amount"
FROM sqltest1 
WHERE EXTRACT(MONTH FROM TransDate) = 4 AND EXTRACT(YEAR FROM TransDate) = 2005;

-- Query 4
SELECT 
    CustomerID,
    TO_CHAR(TransDate, 'MM/DD/YYYY') AS Transdate,
    CASE WHEN TransType = 'C' THEN Amount ELSE '0.00' END AS "Credit Amount",
    CASE WHEN TransType = 'D' THEN Amount ELSE '0.00' END AS "Debit Amount"
FROM sqltest1 
WHERE TransDate = DATE_TRUNC('MONTH', TransDate);

-- Query 5
SELECT 
    CustomerID,
    TO_CHAR(TransDate, 'MM/DD/YYYY') AS Transdate,
    CASE WHEN TransType = 'C' THEN Amount ELSE '0.00' END AS "Credit Amount",
    CASE WHEN TransType = 'D' THEN Amount ELSE '0.00' END AS "Debit Amount"
FROM sqltest1 
WHERE TransDate = DATE_TRUNC('MONTH', TransDate) + INTERVAL '1 MONTH' - INTERVAL '1 DAY';

-- Query 6
SELECT 
    CustomerID,
    TO_CHAR(EXTRACT(YEAR FROM TransDate), 'FM9999') AS year,
    COALESCE(SUM(CASE WHEN TransType = 'C' THEN Amount ELSE 0 END), 0) AS Credit_Total_Amount,
    COALESCE(SUM(CASE WHEN TransType = 'D' THEN Amount ELSE 0 END), 0) AS Debit_Total_Amount
FROM sqltest1 
GROUP BY CustomerID, year
ORDER BY CustomerID, year;
