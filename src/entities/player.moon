Entity = require "lib.concord.entity"
Position = require "src.components.Position"
Rectangle = require "src.components.Rectangle"
Mover = require "src.components.Mover"
Input = require "src.components.Input"
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
	32 -- Speed
Player\give Input,
	buttons

Player