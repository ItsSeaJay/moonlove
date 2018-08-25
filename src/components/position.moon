Component = require "lib.concord.component"
Position = Component (entity, x, y) ->
	entity.x = x
	entity.y = y

Position