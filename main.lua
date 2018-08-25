local tiny = require("lib.tiny")
local player = require("src.entities.player")
local world = tiny:world(player)
love.load = function()
  print("Hello, World!")
  return love.graphics.setDefaultFilter("nearest", "nearest")
end
love.update = function(deltaTime)
  return world:update(deltaTime)
end
love.draw = function() end
love.keypressed = function(key, scancode, isdown)
  if key == "escape" then
    return love.event.quit()
  end
end
