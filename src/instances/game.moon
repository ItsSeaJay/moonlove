Instance = require "lib.concord.instance"
Player = require "src.entities.Player"
Bullet = require "src.entities.Bullet"
Moon = require "src.entities.Moon"
RectangleRenderer = require "src.systems.RectangleRenderer"
SpriteRenderer = require "src.systems.SpriteRenderer"
Input = require "src.systems.Input"
Movement = require "src.systems.Movement"
ScreenWrap = require "src.systems.ScreenWrap"
Firing = require "src.systems.Firing"

Game = Instance!

-- Entities
Game\addEntity Player
Game\addEntity Moon

-- Systems
Game\addSystem Input!, "update", "update"
Game\addSystem Movement!, "update", "update"
Game\addSystem ScreenWrap!, "update", "update"
Game\addSystem Firing!, "update", "update"
Game\addSystem RectangleRenderer!, "draw", "draw"
Game\addSystem SpriteRenderer!, "draw", "draw"

Game