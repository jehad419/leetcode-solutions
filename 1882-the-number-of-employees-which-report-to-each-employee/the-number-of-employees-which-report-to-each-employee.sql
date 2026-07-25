# Solved By Jehad Hasan

SELECT
e.employee_id,
e.name,
COUNT(e2.reports_to) AS reports_count,
ROUND(AVG(e2.age),0) AS average_age
FROM Employees e
INNER JOIN Employees e2
ON e.employee_id=e2.reports_to
WHERE e2.reports_to IS NOT NULL
GROUP BY e.employee_id , e.name
ORDER BY e.employee_id;