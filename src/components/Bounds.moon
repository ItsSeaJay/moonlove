Component = require "lib.concord.component"
Bounds = Component (entity, top, bottom, left, right) ->
	entity.top = top or 0
	entity.bottom = bottom or love.graphics.getHeight!
	entity.left = left or 0
	entity.right = right or love.graphics.getWidth!

Bounds