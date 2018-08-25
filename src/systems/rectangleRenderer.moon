system = require "lib.concord.system"
position = require "src.components.position"
filter = {
	position
}
rectangleRenderer = system(filter)

rectangleRenderer.draw = =>
	for _, entity in ipairs self.pool.objects
		-- Draw a rectangle at 
		love.graphics.rectangle "fill",
			entity\get(position).x,
			entity\get(position).y,
			32,
			32

rectangleRenderer