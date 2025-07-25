USE project1db;
SELECT * FROM superstore;
DELETE FROM superstore WHERE Profit IS NULL OR Sales IS NULL;
SELECT 
    Category,
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2) AS Profit_Margin
FROM superstore
GROUP BY Category, `Sub-Category`
ORDER BY Profit_Margin ASC;


