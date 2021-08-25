SELECT id, name FROM departments d
    WHERE id IN
        (SELECT department_id FROM sales s
            WHERE d.id=s.department_id AND s.price > 98);