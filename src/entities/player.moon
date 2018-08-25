Entity = require "lib.concord.entity"
Position = require "src.components.Position"
Rectangle = require "src.components.Rectangle"
Player = Entity!

Player\give Position,
	love.graphics.getWidth! / 2,
	love.graphics.getHeight! / 2
Player\give Rectangle,
	love.graphics.getWidth! / 2,
	love.graphics.getHeight! / 2,
	32,
	32

Player