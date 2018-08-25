System = require "lib.concord.system"
Rectangle = require "src.components.Rectangle"
filter = {
	Rectangle
}
RectangleRenderer = System(filter)

RectangleRenderer.draw = =>
	for _, entity in ipairs self.pool.objects
		-- Draw a rectangle at 
		love.graphics.rectangle "fill",
			entity\get(position).top,
			entity\get(position).left,
			entity\get(position).width,
			entity\get(position).height

RectangleRenderer