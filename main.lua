local rectangle = {
  x = 0,
  y = 0,
  width = 0,
  height = 0
}
love.load = function()
  print("Hello, World!")
  return x
end
love.update = function(deltaTime)
  rectangle.x = rectangle.x + deltaTime
end
love.draw = function()
  return print("draw")
end
