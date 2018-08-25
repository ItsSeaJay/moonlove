love.load = ->
	print "Hello, World!"

love.update = (deltaTime) ->
	-- TODO: Update all of the entities in the game

love.draw = ->
	-- TODO: Draw the scene

love.keypressed = (key, scancode, isdown) ->
	if key == "escape"
		love.event.quit!