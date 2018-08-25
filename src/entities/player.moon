entity = require "lib.concord.entity"
position = require "src.components.position"
player = entity!

player\give position, love.graphics.getWidth! / 2, love.graphics.getHeight! / 2

player