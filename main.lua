require "player"

function love.load()
  love.window.setTitle("Player Move")
  initPlayer()
end

function love.update(dt)
  movePlayer(dt)
end

function love.draw()
  drawPlayer()
end

function love.keypressed(k)
  if k == 'escape' then
    love.event.quit()
  end
end
