instance = require "lib.concord.instance"
player = require "src.entities.player"
rectangleRenderer = require "src.systems.rectangleRenderer"
game = instance!

-- Entities
game\addEntity player

-- Systems
game\addSystem rectangleRenderer!, "draw", "draw"

game