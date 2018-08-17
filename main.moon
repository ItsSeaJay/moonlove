Rectangle = require "src.Rectangle"

rectangle = Rectangle 0, 0, 32, 32

love.load = ->
	print "Hello, World!"

love.update = (deltaTime) ->
	gravity = 2
	speed = 2

	-- Make the rectangle fall
	rectangle.x += deltaTime * speed

	-- Wrap the rectangle around the y axis
	if rectangle.y > love.graphics.getHeight!
		rectangle.y = -rectangle.height

love.draw = ->
	rectangle\draw!

love.keypressed = (key, scancode, isdown) ->
	if key == "escape"
		love.event.quit!