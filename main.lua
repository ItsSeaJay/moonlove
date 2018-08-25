local Rectangle = require("src.Rectangle")
local rectangle = Rectangle(0, 0, 32, 32)
love.load = function()
  print("Hello, World!")
  rectangle.x = love.graphics.getHeight() / 2
end
love.update = function(deltaTime)
  local gravity = 32
  local speed = 32
  rectangle.x = rectangle.x + (deltaTime * speed)
  rectangle.y = rectangle.y + (deltaTime * gravity)
  if rectangle.y > love.graphics.getHeight() then
    rectangle.y = -rectangle.height
  end
end
love.draw = function()
  return rectangle:draw()
end
love.keypressed = function(key, scancode, isdown)
  if key == "escape" then
    return love.event.quit()
  end
end
