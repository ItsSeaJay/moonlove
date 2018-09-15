System = require "lib.concord.system"
Position = require "src.components.Position"
Rotation = require "src.components.Rotation"
Sprite = require "src.components.Sprite"
filter = {
	Position,
	Sprite
}
SpriteRenderer = System filter

SpriteRenderer.draw = () =>
	for _, entity in ipairs self.pool.objects
		position = entity\get Position
		sprite = entity\get Sprite

		love.graphics.draw sprite.source, -- Image source
			position.x,
			position.y,
			if entity\has(Rotation) then entity\get(Rotation).angle else 0, -- Angle
			1, -- Horizontal scale
			1, -- Vertical scale
			(sprite.source\getWidth! / 2), -- Default the origin to the center
			(sprite.source\getHeight! / 2)

SpriteRenderer