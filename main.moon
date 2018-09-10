Concord = require "lib.concord"
Game = require "src.instances.Game"

love.load = ->
	print "Hello, World!"
	love.graphics.setDefaultFilter "nearest", "nearest"
	Concord.init!
	Game\emit "load"

love.update = (deltaTime) ->
	Game\emit "update", deltaTime

love.draw = ->
	Game\emit "draw"

love.keypressed = (key, scancode, isdown) ->
	if key == "escape"
		love.event.quit!

	if key == "f5"
		love.load!