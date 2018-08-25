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
		-- Draw a rectangle at 
		love.graphics.rectangle "fill",
			entity\get(Position).x,
			entity\get(Position).y,
			entity\get(Rectangle).width,
			entity\get(Rectangle).height

RectangleRenderer