Entity = require "lib.concord.entity"
Position = require "src.components.in"
Moon = Entity()

Moon\give Position,
	love.graphics.getWidth! / 2,
	love.graphics.getHeight! / 2

Moon