local exports = {}

local GRID_SIZE = 24
local HALF_SIZE = GRID_SIZE / 2
local LARGE_TILE = 10 
local SMALL_TILE = 7

hs.grid.setGrid(GRID_SIZE .. 'x' .. GRID_SIZE)
hs.grid.setMargins({5, 5})
hs.window.animationDuration = 0.0

local screenPositions = {}
screenPositions.leftThird = {
  x = 0, y = 0,
  w = SMALL_TILE, h = GRID_SIZE
}

screenPositions.centerThird = {
  x = SMALL_TILE, y = 0,
  w = LARGE_TILE, h = GRID_SIZE
}

screenPositions.rightThird = {
  x = SMALL_TILE + LARGE_TILE, y = 0,
  w = SMALL_TILE, h = GRID_SIZE
}

screenPositions.topLeftThird = {
  x = 0, y = 0,
  w = SMALL_TILE, h = HALF_SIZE
}

screenPositions.bottomLeftThird = {
  x = 0, y = HALF_SIZE,
  w = SMALL_TILE, h = HALF_SIZE
}

screenPositions.topRightThird = {
  x = SMALL_TILE + LARGE_TILE, y = 0,
  w = SMALL_TILE, h = HALF_SIZE
}

screenPositions.bottomRightThird = {
  x = SMALL_TILE + LARGE_TILE, y = HALF_SIZE,
  w = SMALL_TILE, h = HALF_SIZE
}

screenPositions.leftHalf = {
  x = 0, y = 0,
  w = HALF_SIZE, h = GRID_SIZE
}

screenPositions.rightHalf = {
  x = HALF_SIZE, y = 0,
  w = HALF_SIZE, h = GRID_SIZE
}

exports.screenPositions = screenPositions

function exports.tileWindow(cell, window)
  if window == nil then
    window = hs.window.focusedWindow()
  end
  if window then
    local screen = window:screen()
    hs.grid.set(window, cell, screen)
  end
end

function exports.windowMaximize(factor, window)
  if window == nil then
    window = hs.window.focusedWindow()
  end
  if window then
    window:maximize()
  end
end

return exports