Rectangle = require "src.Rectangle"

rectangle = Rectangle 0, 0, 32, 32

love.load = ->
	print "Hello, World!"
	rectangle.x = love.graphics.getHeight! / 2

love.update = (deltaTime) ->
	gravity = 32
	speed = 32

	-- Make the rectangle fall
	rectangle.x += deltaTime * speed
	rectangle.y += deltaTime * gravity

	-- Wrap the rectangle around the y axis
	if rectangle.y > love.graphics.getHeight!
		rectangle.y = -rectangle.height

love.draw = ->
	rectangle\draw!

love.keypressed = (key, scancode, isdown) ->
	if key == "escape"
		love.event.quit!