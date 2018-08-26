Entity = require "lib.concord.entity"
Position = require "src.components.Position"
Mover = require "src.components.Mover"
Sprite = require "src.components.Sprite"
Bullet = Entity!

Bullet\give Position,
	32, -- X
	64 -- Y
Bullet\give Mover,
	128
Bullet\give Sprite,
	"res/Lasers/laserBlue08.png"

Bullet