SELECT pm.pokemon_name, pm.str * mlt.multiplier AS modifiedStrength, mlt.element
FROM pokemon pm
INNER JOIN multipliers mlt
  ON pm.element_id=mlt.id
WHERE pm.str * mlt.multiplier >= 40
ORDER BY pm.str * mlt.multiplier DESC;