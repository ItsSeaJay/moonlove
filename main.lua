local rectangle = {
  x = 0,
  y = 0,
  width = 32,
  height = 32
}
love.load = function()
  return print("Hello, World!")
end
love.update = function(deltaTime)
  local speed = 2
  rectangle.x = rectangle.x + (deltaTime * speed)
  if rectangle.x > love.graphics.getWidth() then
    rectangle.x = -rectangle.width
  end
end
love.draw = function()
  return love.graphics.rectangle("fill", rectangle.x, rectangle.y, rectangle.width, rectangle.height)
end
love.keypressed = function(key, scancode, isdown)
  if key == "escape" then
    return love.event.quit()
  end
end
