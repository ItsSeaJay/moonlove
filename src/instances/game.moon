Instance = require "lib.concord.instance"
Player = require "src.entities.Player"
Moon = require "src.entities.Moon"
RectangleRenderer = require "src.systems.RectangleRenderer"
SpriteRenderer = require "src.systems.SpriteRenderer"
MovementInput = require "src.systems.MovementInput"
Game = Instance!

-- Entities
Game\addEntity Player
Game\addEntity Moon

-- Systems
Game\addSystem MovementInput!, "update", "update"
Game\addSystem RectangleRenderer!, "draw", "draw"
Game\addSystem SpriteRenderer!, "draw", "draw"

Game