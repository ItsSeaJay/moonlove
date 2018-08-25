instance = require "lib.concord.instance"
Player = require "src.entities.Player"
RectangleRenderer = require "src.systems.RectangleRenderer"
game = instance!

-- Entities
game\addEntity Player

-- Systems
game\addSystem RectangleRenderer!, "draw", "draw"

game