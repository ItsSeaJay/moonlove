Component = require "lib.concord.component"
Vector = require "src.Vector"
Mover = Component (entity, speed, velocity) ->
	entity.speed = speed
	entity.velocity = velocity or Vector!

Mover