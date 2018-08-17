rectangle =
	x: 0
	y: 0
	width: 0
	height: 0

love.load = ->
	print "Hello, World!"

love.update = (deltaTime) ->
	rectangle.x += deltaTime

love.draw = ->
	-- Draw a rectangle
