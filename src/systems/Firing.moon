Concord = require "lib.concord"
System = require "lib.concord.system"
Gun = require "src.components.Gun"
Position = require "src.components.Position"
Sprite = require "src.components.Sprite"
Mover = require "src.components.Mover"
Bounds = require "src.components.Bounds"
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
			print "Shoot!"

			-- Create a new projectile with a given speed
			projectile = Concord.entity!
			speed = 512

			-- Give that projectile some components
			projectile\give Position,
				position.x,
				position.y
			projectile\give Sprite,
				"res/Lasers/laserBlue08.png"
			projectile\give Mover,
				speed,
				Vector speed,
				0
			projectile\give Bounds

			-- Add that projectile entity to the current instance
			self\getInstance!\addEntity projectile

			-- Heat up the gun by a number of seconds equal to it's cooldown
			gun.heat = gun.cooldown

Firing
