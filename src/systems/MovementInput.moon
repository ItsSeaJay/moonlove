System = require "lib.concord.system"
Position = require "src.components.Position"
Mover = require "src.components.Mover"
Input = require "src.components.Input"
filter = {
	Mover,
	Position,
	Input
}
MovementInput = System(filter)

MovementInput.update = (deltaTime) =>
	for _, entity in ipairs self.pool.objects
		mover = entity\get Mover
		position = entity\get Position
		input = entity\get Input

		-- Vertical
		if love.keyboard.isDown input.buttons.up
			position.y -= mover.speed * deltaTime
		elseif love.keyboard.isDown input.buttons.down
			position.y += mover.speed * deltaTime

		-- Horizontal
		if love.keyboard.isDown input.buttons.left
			position.x -= mover.speed * deltaTime
		elseif love.keyboard.isDown input.buttons.right
			position.x += mover.speed * deltaTime

MovementInput