CREATE DATABASE finance_project;
use finance_project;

SHOW DATABASES;

select * from sp500_companies limit 10;

-- How many companies belong to each sector?

select sector , count(*) as total_companies
from sp500_companies
group by sector
order by total_companies desc;

-- Which sectors have the highest average Price-to-Earnings (PE) ratio?

SELECT
    Sector,
    ROUND(AVG( `Price/Earnings` ), 2) AS Avg_PE_Ratio
FROM sp500_companies
GROUP BY Sector
ORDER BY Avg_PE_Ratio DESC;

-- Which sectors contribute the highest market value?

SELECT
    Sector,
    ROUND(SUM(`Market Cap`), 2) AS Total_Market_Cap
FROM sp500_companies
GROUP BY Sector
ORDER BY Total_Market_Cap DESC;

-- Which sectors trade at premium valuations?

SELECT
    Sector,
    ROUND(AVG(`Price/Earnings`),2) AS Avg_PE
FROM sp500_companies
GROUP BY Sector
HAVING AVG(`Price/Earnings`) > 25
ORDER BY Avg_PE DESC;

-- Which companies dominates the market?

SELECT
    Name,
    Sector,
    `Market Cap`
FROM sp500_companies
ORDER BY `Market Cap` DESC
LIMIT 10;

-- Which companies are larger than the average company?

SELECT
    Name,
    Sector,
    `Market Cap`
FROM sp500_companies
WHERE `Market Cap` >
(
    SELECT AVG(`Market Cap`)
    FROM sp500_companies
)
ORDER BY `Market Cap` DESC;

-- Which companies are valued more aggressively than their peers?

SELECT
    Name,
    Sector,
    `Price/Earnings`
FROM sp500_companies s1
WHERE `Price/Earnings` >
(
    SELECT AVG(s2.`Price/Earnings`)
    FROM sp500_companies s2
    WHERE s1.Sector = s2.Sector
);

-- Which sectors dominate the market?

WITH SectorMarketCap AS
(
    SELECT
        Sector,
        SUM(`Market Cap`) AS Total_Market_Cap
    FROM sp500_companies
    GROUP BY Sector
)

SELECT *
FROM SectorMarketCap
ORDER BY Total_Market_Cap DESC
LIMIT 5;

-- Which company leads each sector by market capitalization?

WITH RankedCompanies AS
(
    SELECT
        Name,
        Sector,
        `Market Cap`,
        ROW_NUMBER() OVER
        (
            PARTITION BY Sector
            ORDER BY `Market Cap` DESC
        ) AS rn
    FROM sp500_companies
)

SELECT
    Name,
    Sector,
    `Market Cap`
FROM RankedCompanies
WHERE rn = 1;

-- How do sectors rank by market value?

SELECT
    Sector,
    SUM(`Market Cap`) AS Total_Market_Cap,
    DENSE_RANK() OVER
    (
        ORDER BY SUM(`Market Cap`) DESC
    ) AS Sector_Rank
FROM sp500_companies
GROUP BY Sector;

-- How are companies distributed by size?

SELECT
    Name,
    Sector,
    `Market Cap`,
    CASE
        WHEN `Market Cap` >= 100000000000 THEN 'Large Cap'
        WHEN `Market Cap` >= 10000000000 THEN 'Mid Cap'
        ELSE 'Small Cap'
    END AS Company_Size
FROM sp500_companies;