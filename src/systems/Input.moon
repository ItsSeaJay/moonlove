System = require "lib.concord.system"
Position = require "src.components.Position"
Mover = require "src.components.Mover"
Input = require "src.components.Input"
filter = {
	Mover,
	Position,
	Input
}
MovementInput = System filter

MovementInput.update = (deltaTime) =>
	for _, entity in ipairs self.pool.objects
		mover = entity\get Mover
		position = entity\get Position
		input = entity\get Input

		-- Vertical
		if love.keyboard.isDown input.buttons.up
			mover.velocity.y = -mover.speed
		elseif love.keyboard.isDown input.buttons.down
			mover.velocity.y = mover.speed
		else
			mover.velocity.y = 0

		-- Horizontal
		if love.keyboard.isDown input.buttons.left
			mover.velocity.x = -mover.speed
		elseif love.keyboard.isDown input.buttons.right
			mover.velocity.x = mover.speed
		else
			mover.velocity.x = 0

MovementInput