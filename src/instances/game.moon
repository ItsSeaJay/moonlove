instance = require "lib.concord.instance"
player = require "src.entities.player"
game = instance!

-- Entities
game\addEntity player

-- Systems
game\addSystem draw, "draw"

game