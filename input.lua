function initInput()
  -- define default keys
  keysLeft  = {"a", "left"}
  keysRight = {"d", "right"}
  keysUp    = {"w", "up"}
  keysDown  = {"s", "down"}

  hasInputLeft  = function () return isKeyActuated(keysLeft) end
  hasInputRight = function () return isKeyActuated(keysRight) end
  hasInputUp    = function () return isKeyActuated(keysUp) end
  hasInputDown  = function () return isKeyActuated(keysDown) end

  getInputs = function () return hasInputLeft(), hasInputRight(), hasInputUp(), hasInputDown() end
end

function isKeyActuated(keys)
  if type(keys) == "string" then
    return love.keyboard.isDown(keys)
  end

  if type(keys) == "table" then
    local isDown = false
    for index, key in ipairs(keys) do
      isDown = isDown or love.keyboard.isDown(key)
    end
    return isDown
  end

  return false
end
