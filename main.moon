concord = require "lib.concord"
game = require "src.instances.game"

love.load = ->
	print "Hello, World!"
	love.graphics.setDefaultFilter "nearest", "nearest"
	concord.init!
	game\emit "load"

love.update = (deltaTime) ->
	game\emit "update", deltaTime

love.draw = ->
	game\emit "draw"

love.keypressed = (key, scancode, isdown) ->
	if key == "escape"
		love.event.quit!