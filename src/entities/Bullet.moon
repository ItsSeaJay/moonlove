Entity = require "lib.concord.entity"
Position = require "src.components.Position"
Sprite = require "src.components.Sprite"
Bullet = Entity!

Bullet\give Position,
	32, -- X
	32 -- Y
Bullet\give Sprite,
	"res/Lasers/laserBlue08.png"

Bullet