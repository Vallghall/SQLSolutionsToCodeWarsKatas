SELECT top.id, top.heads, top.arms, bot.legs, bot.tails, 
  CASE WHEN top.heads > top.arms OR bot.tails > bot.legs
    THEN 'BEAST'
    ELSE 'WEIRDO'
  END AS species
FROM top_half top
INNER JOIN bottom_half bot
  ON top.id=bot.id
ORDER BY species ASC;