SELECT 
  name,
  SUM(won) AS won,
  SUM(lost) AS lost
FROM fighters
JOIN winning_moves wm ON fighters.move_id=wm.id
WHERE wm.move != 'Hadoken' AND wm.move != 'Shouoken' AND wm.move != 'Kikoken'
GROUP BY fighters.name
ORDER BY won DESC
LIMIT 6;