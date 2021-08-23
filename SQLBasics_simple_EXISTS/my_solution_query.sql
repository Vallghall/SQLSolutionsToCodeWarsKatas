SELECT d.id, d.name 
FROM departments d
WHERE EXISTS (
  SELECT s.name
  FROM sales s
  WHERE price > 98.00 AND s.department_id=d.id
)