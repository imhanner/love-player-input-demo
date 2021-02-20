require "input"
require "util"

function initPlayer()
  initInput()
  player = {}
  player.x = 100
  player.y = 50
end

function drawPlayer()
  love.graphics.rectangle("fill", player.x, player.y, 100, 100, 10)
end

function movePlayer(dt)
  local left, right, up, down = getInputs()
  local horizontal, vertical = spaceship(left, right), spaceship(up, down)
  local isDiagonal = horizontal ~= 0 and vertical ~= 0
  local step = 300
  step = (isDiagonal and step / math.sqrt(2.0) or step) * dt

  player.x = player.x + step * horizontal
  player.y = player.y + step * vertical
end
