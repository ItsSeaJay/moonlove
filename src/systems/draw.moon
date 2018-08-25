system = require "lib.concord.system"
position = require "src.components.position"
filter = {
	position
}
draw = system(filter)

draw.draw = =>
	for _, entity in ipairs self.pool.objects
		love.graphics.rectangle "fill",
			entity\get(position).x,
			entity\get(position).y,
			32,
			32

draw