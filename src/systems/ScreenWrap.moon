System = require "lib.concord.system"
Position = require "src.components.Position"
Bounds = require "src.components.Bounds"
filter = {
	Position,
	Bounds
}
ScreenWrap = System filter

ScreenWrap.update = (deltaTime) =>
	for _, entity in ipairs self.pool.objects
		position = entity\get Position
		bounds = entity\get Bounds

		if position.x > bounds.right
			position.x = bounds.left

		if position.x < bounds.left
			position.x = bounds.right

		if position.y > bounds.bottom
			position.y = bounds.top

		if position.y < bounds.top
			position.y = bounds.bottom

ScreenWrap
