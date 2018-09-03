Entity = require "lib.concord.entity"
Vector = require "src.Vector"
Position = require "src.components.Position"
Mover = require "src.components.Mover"
Sprite = require "src.components.Sprite"
Bounds = require "src.components.Bounds"
Bullet = Entity!

speed = 512

Bullet\give Position,
	32, -- X
	64 -- Y
Bullet\give Mover,
	speed,
	Vector speed, 0
Bullet\give Sprite,
	"res/Lasers/laserBlue08.png"
Bullet\give Bounds

Bullet