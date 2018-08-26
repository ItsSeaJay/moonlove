Component = require "lib.concord.component"
Sprite = Component (entity, source) ->
	entity.source = love.graphics.newImage(source)

Sprite