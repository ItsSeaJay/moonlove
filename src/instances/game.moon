instance = require "lib.concord.instance"
Player = require "src.entities.Player"
RectangleRenderer = require "src.systems.RectangleRenderer"
MovementInput = require "src.systems.MovementInput"
game = instance!

-- Entities
game\addEntity Player

-- Systems
game\addSystem MovementInput!, "update", "update"
game\addSystem RectangleRenderer!, "draw", "draw"

game