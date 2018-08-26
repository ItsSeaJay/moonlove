Instance = require "lib.concord.instance"
Player = require "src.entities.Player"
Bullet = require "src.entities.Bullet"
Moon = require "src.entities.Moon"
RectangleRenderer = require "src.systems.RectangleRenderer"
SpriteRenderer = require "src.systems.SpriteRenderer"
MovementInput = require "src.systems.MovementInput"
Movement = require "src.systems.Movement"

Game = Instance!

-- Entities
Game\addEntity Player
Game\addEntity Moon
Game\addEntity Bullet

-- Systems
Game\addSystem MovementInput!, "update", "update"
Game\addSystem Movement!, "update", "update"
Game\addSystem RectangleRenderer!, "draw", "draw"
Game\addSystem SpriteRenderer!, "draw", "draw"

Game