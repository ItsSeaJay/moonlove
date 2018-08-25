tiny = require "lib.tiny"
player = require "src.entities.player"

world = tiny\world player
updateFilter = tiny.requireAll("update")
drawFilter = tiny.requireAll("draw")

love.load = ->
	print "Hello, World!"
	love.graphics.setDefaultFilter("nearest", "nearest")

love.update = (deltaTime) ->
	world\update deltaTime

love.draw = ->
	-- TODO: Draw the scene

love.keypressed = (key, scancode, isdown) ->
	if key == "escape"
		love.event.quit!