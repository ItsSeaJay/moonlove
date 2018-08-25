System = require "lib.concord.system"
Mover = require "src.components.Mover"
Position = require "src.components.Position"
filter = {
	Mover,
	Position
}
OrthogonalMovement = System(filter)

OrthogonalMovement.update = (deltaTime) =>
	for _, entity in ipairs self.pool.objects
		mover = entity\get Mover
		position = entity\get Position


OrthogonalMovement