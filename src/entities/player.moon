Entity = require "lib.concord.entity"
Position = require "src.components.Position"
Rectangle = require "src.components.Rectangle"
Mover = require "src.components.Mover"
Input = require "src.components.Input"
Bounds = require "src.components.Bounds"
Player = Entity!

buttons = 
	up: "w"
	down: "s"
	left: "a"
	right: "d"

Player\give Position,
	love.graphics.getWidth! / 2,
	love.graphics.getHeight! / 2
Player\give Rectangle,
	love.graphics.getWidth! / 2,
	love.graphics.getHeight! / 2,
	32, -- Width
	64 -- Height
Player\give Mover,
	128 -- Speed
Player\give Input,
	buttons
Player\give Bounds,
	-32,
	love.graphics.getHeight! + 32,
	-32,
	love.graphics.getWidth! + 32

Player