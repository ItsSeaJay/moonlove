local Rectangle = require("src.Rectangle")
local rectangle = Rectangle(0, 0, 32, 32)
love.load = function()
  return print("Hello, World!")
end
love.update = function(deltaTime)
  local gravity = 2
  local speed = 2
  rectangle.x = rectangle.x + (deltaTime * speed)
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
