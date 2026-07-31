#Solved by Jehad Hasan

-- select low salaries
SELECT
'Low Salary' AS category,
COUNT(*) AS accounts_count
FROM Accounts
WHERE income<20000

-- union (duplicate also)
UNION ALL

-- select average salaries
SELECT
'Average Salary',
COUNT(*)
FROM Accounts
WHERE income BETWEEN 20000 AND 50000

-- Again Union(duplicate also)
UNION ALL

-- Select High salaries 
SELECT
'High Salary',
COUNT(*)
FROM Accounts
WHERE income > 50000;