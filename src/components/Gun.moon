Component = require "lib.concord.component"
Bullet = require "src.entities.Bullet"
Gun = Component (entity, cooldown) ->
	entity.cooldown = cooldown or 0.5
	entity.heat = 0

Gun
