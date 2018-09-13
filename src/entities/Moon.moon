Entity = require "lib.concord.entity"
Position = require "src.components.Position"
Sprite = require "src.components.Sprite"
Gun = require "src.components.Gun"
Bullet = require "src.entities.Bullet"
Moon = Entity!

cooldown = 3

Moon\give Position,
	love.graphics.getWidth! / 2,
	love.graphics.getHeight! / 2
Moon\give Sprite,
	"res/moon.png"
Moon\give Gun,
	cooldown

Moon