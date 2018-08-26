Component = require "lib.concord.component"
Bounds = Component (entity, top, bottom, left, right) ->
	entity.top = top
	entity.bottom = bottom
	entity.left = left
	entity.right = right

Bounds