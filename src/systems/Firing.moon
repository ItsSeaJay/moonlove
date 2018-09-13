-- Concord
Entity = require "lib.concord.Entity"
System = require "lib.concord.system"
-- Components
Gun = require "src.components.Gun"
Position = require "src.components.Position"
Rotation = require "src.components.Rotation"
Sprite = require "src.components.Sprite"
Mover = require "src.components.Mover"
Bounds = require "src.components.Bounds"
-- Classes
Vector = require "src.Vector"
filter = {
	Gun
}
Firing = System filter

Firing.update = (deltaTime) =>
	for _, entity in ipairs(self.pool.objects)
		gun = entity\get Gun
		position = entity\get Position

		-- Cool down the gun
		gun.heat -= deltaTime

		if gun.heat < 0
			-- Create a new projectile with a given speed
			projectile = Entity!
			speed = 256
			angle = love.math.random 0,
				math.pi * 2 -- The angle can be any point on a circle in radians

			-- Give that projectile some components
			projectile\give Position,
				position.x,
				position.y
			projectile\give Rotation,
				angle
			projectile\give Sprite,
				"res/Lasers/laserBlue08.png"
			projectile\give Mover,
				speed
			projectile\give Bounds

			-- Add that projectile entity to the current instance
			self\getInstance!\addEntity projectile

			-- Heat up the gun by a number of seconds equal to it's cooldown
			gun.heat = gun.cooldown

Firing
