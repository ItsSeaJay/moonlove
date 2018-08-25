Component = require "lib.concord.Component"
Position = Component (entity, x, y) ->
	entity.x = x
	entity.y = y

Position