Component = require "lib.concord.component"
Bullet = require "src.entities.Bullet"
Gun = Component (entity, projectile, cooldown) ->
	entity.projectile = projectile or Bullet
	entity.cooldown = cooldown or 0.5

Gun
