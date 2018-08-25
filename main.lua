local tiny = require("lib.tiny")
love.load = function()
  print("Hello, World!")
  return love.graphics.setDefaultFilter("nearest", "nearest")
end
love.update = function(deltaTime) end
love.draw = function() end
love.keypressed = function(key, scancode, isdown)
  if key == "escape" then
    return love.event.quit()
  end
end
