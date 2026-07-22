let score (x: float) (y: float): int =
  if sqrt (x*.x +. y*.y) > 10. then
    0
  else if sqrt(x*.x +. y*.y) > 5. then
    1
  else if sqrt(x*.x +. y*.y) > 1. then
    5
  else
    10
