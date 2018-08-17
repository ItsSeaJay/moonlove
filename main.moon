rectangle =
	x: 0
	y: 0
	width: 32
	height: 32

love.load = ->
	print "Hello, World!"

love.update = (deltaTime) ->
	speed = 2

	-- Move the rectangle to the left
	rectangle.x += deltaTime * speed

	if rectangle.x > love.graphics.getWidth! then rectangle.x = -rectangle.width

love.draw = ->
	love.graphics.rectangle "fill",
		rectangle.x,
		rectangle.y,
		rectangle.width,
		rectangle.height

love.keypressed = (key, scancode, isdown) ->
	if key == "escape"
		love.event.quit!