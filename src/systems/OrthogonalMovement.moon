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
		-- TODO: clean this up to use a proper input system
		up = love.keyboard.isDown "w" or love.keyboard.isDown "up"
		down = love.keyboard.isDown "s" or love.keyboard.isDown "down"
		left = love.keyboard.isDown "a" or love.keyboard.isDown "left"
		right = love.keyboard.isDown "d" or love.keyboard.isDown "right"
		
		-- Horizontal
		if left then position.x -= mover.speed * deltaTime
		if right then position.x += mover.speed * deltaTime
		-- Vertical
		if up then position.y -= mover.speed * deltaTime
		if down then position.y += mover.speed * deltaTime

OrthogonalMovement