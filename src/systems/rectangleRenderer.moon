System = require "lib.concord.system"
Position = require "src.components.Position"
Rectangle = require "src.components.Rectangle"
filter = {
	Position,
	Rectangle
}
RectangleRenderer = System(filter)

RectangleRenderer.draw = () =>
	for _, entity in ipairs self.pool.objects
		position = entity\get Position
		rectangle = entity\get Rectangle

		-- Draw a rectangle at the center of the position
		love.graphics.rectangle "fill",
			position.x - (rectangle.width / 2),
			position.y - (rectangle.height / 2),
			rectangle.width,
			rectangle.height

RectangleRenderer