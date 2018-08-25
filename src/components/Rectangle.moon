Component = require "lib.concord.component"
Rectangle = Component (entity, top, left, width, height) ->
	entity.top = top
	entity.left = left
	entity.width = width
	entity.height = height

Rectangle