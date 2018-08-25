instance = require "lib.concord.instance"
Player = require "src.entities.Player"
RectangleRenderer = require "src.systems.RectangleRenderer"
OrthogonalMovement = require "src.systems.OrthogonalMovement"
game = instance!

-- Entities
game\addEntity Player

-- Systems
game\addSystem OrthogonalMovement!, "update", "update"
game\addSystem RectangleRenderer!, "draw", "draw"

game