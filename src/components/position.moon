component = require "lib.concord.component"
position = component (entity, x, y) ->
	entity.x = x
	entity.y = y

position