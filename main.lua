local concord = require("lib.concord")
local Game = require("src.instances.Game")
love.load = function()
  print("Hello, World!")
  love.graphics.setDefaultFilter("nearest", "nearest")
  concord.init()
  return Game:emit("load")
end
love.update = function(deltaTime)
  return Game:emit("update", deltaTime)
end
love.draw = function()
  return Game:emit("draw")
end
love.keypressed = function(key, scancode, isdown)
  if key == "escape" then
    return love.event.quit()
  end
end
