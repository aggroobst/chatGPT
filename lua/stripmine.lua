function stripMine()
    local width = 3 -- Breite des Streifens (anpassen nach Bedarf)
    local height = 2 -- Höhe des Streifens (anpassen nach Bedarf)
    local length = 64 -- Länge des Streifens (anpassen nach Bedarf)
    local spaceBetween = 2 -- Abstand zwischen den Streifen (anpassen nach Bedarf)
    
    for i = 1, length do
      for j = 1, height do
        turtle.dig()
        turtle.forward()
        turtle.digUp()
        turtle.digDown()
      end
      
      if i % width == 0 then
        turtle.turnRight()
        if i ~= length then
          for k = 1, spaceBetween do
            turtle.forward()
          end
          turtle.turnRight()
        end
      elseif i % width == 1 then
        turtle.turnLeft()
        if i ~= 1 then
          for k = 1, spaceBetween do
            turtle.forward()
          end
          turtle.turnLeft()
        end
      end
    end
  end