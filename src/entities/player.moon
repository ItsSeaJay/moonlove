entity = require "lib.concord.entity"
Position = require "src.components.Position"
Player = entity!

Player\give Rectangle,
	love.graphics.getWidth! / 2,
	love.graphics.getHeight! / 2,
	32,
	32

Player