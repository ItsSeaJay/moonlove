System = require "lib.concord.system"
Mover = require "src.components.Mover"
Position = require "src.components.Position"
Rotation = require "src.components.Rotation"
filter = {
	Mover,
	Position,
	Rotation
}
RotationalMovement = System filter

RotationalMovement.update = (deltaTime) =>
	for _, entity in ipairs self.pool.objects
		mover = entity\get Mover
		position = entity\get Position
		rotation = entity\get Rotation

		position.x += math.sin(rotation.angle) * mover.speed * deltaTime
		position.y += math.cos(rotation.angle) * mover.speed * deltaTime

RotationalMovement