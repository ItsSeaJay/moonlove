Instance = require "lib.concord.instance"

-- Entities
Player = require "src.entities.Player"
Bullet = require "src.entities.Bullet"
Moon = require "src.entities.Moon"

-- Systems
RectangleRenderer = require "src.systems.RectangleRenderer"
SpriteRenderer = require "src.systems.SpriteRenderer"
Input = require "src.systems.Input"
Movement = require "src.systems.Movement"
RotationalMovement = require "src.systems.RotationalMovement"
ScreenWrap = require "src.systems.ScreenWrap"
Firing = require "src.systems.Firing"

Game = Instance!

-- Entities
Game\addEntity Player
Game\addEntity Moon

-- Systems
-- update
Game\addSystem Input!, "update", "update"
Game\addSystem Movement!, "update", "update"
Game\addSystem RotationalMovement!, "update", "update"
Game\addSystem ScreenWrap!, "update", "update"
Game\addSystem Firing!, "update", "update"

-- draw
Game\addSystem RectangleRenderer!, "draw", "draw"
Game\addSystem SpriteRenderer!, "draw", "draw"

Game