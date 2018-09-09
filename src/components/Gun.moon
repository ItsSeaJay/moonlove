Component = require "lib.concord.component"
Bullet = require "src.entities.Bullet"
Gun = Component (entity, cooldown) ->
	entity.projectile = (e, x, y) ->

	entity.cooldown = cooldown or 0.5
	entity.heat = 0

Gun
