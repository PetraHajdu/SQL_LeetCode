SELECT Project.project_id, ROUND(SUM(experience_years)/COUNT(project_id), 2) AS average_years 
FROM Project
INNER JOIN Employee ON Project.employee_id=Employee.employee_id 
WHERE experience_years IS NOT null
GROUP BY project_id;
