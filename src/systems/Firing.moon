System = require "lib.concord.system"
Gun = require "src.components.Gun"
Position = require "src.components.Position"
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

			-- Heat up the gun by a number of seconds equal to it's cooldown
			gun.heat = gun.cooldown

			-- Create a new instance of the projectile
			self\getInstance\addEntity

Firing
