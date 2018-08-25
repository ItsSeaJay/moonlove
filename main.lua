local concord = require("lib.concord")
local game = require("src.instances.Game")
love.load = function()
  print("Hello, World!")
  love.graphics.setDefaultFilter("nearest", "nearest")
  concord.init()
  return game:emit("load")
end
love.update = function(deltaTime)
  return game:emit("update", deltaTime)
end
love.draw = function()
  return game:emit("draw")
end
love.keypressed = function(key, scancode, isdown)
  if key == "escape" then
    return love.event.quit()
  end
end
