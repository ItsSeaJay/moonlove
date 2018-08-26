System = require "lib.concord.system"
Position = require "src.components.Position"
Mover = require "src.components.Mover"
filter = {
	Position,
	Mover
}
Movement = System filter

Movement.update = (deltaTime) =>
	for _, entity in ipairs self.pool.objects
		position = entity\get Position
		mover = entity\get Mover

		position.x += mover.velocity.x * deltaTime
		position.y += mover.velocity.y * deltaTime

Movement