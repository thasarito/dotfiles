-- auto reload --
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

-- caffeine --
dofile('caffeine.lua')

-- hyper --
local hyper = require('hyper')
hyper.install('F18')

-- tiling --
local tile = require('tiling')

-- app --
local app = require('application')

-- binding hyper to tiling --
hyper.bindKey("l", function()
  tile.tileWindow(tile.screenPositions.leftThird)
end)

hyper.bindKey(";", function()
  tile.tileWindow(tile.screenPositions.centerThird)
end)

hyper.bindKey("'", function()
  tile.tileWindow(tile.screenPositions.rightThird)
end)

hyper.bindKey("p", function()
  tile.tileWindow(tile.screenPositions.topLeftThird)
end)

hyper.bindKey(",", function()
  tile.tileWindow(tile.screenPositions.bottomLeftThird)
end)


hyper.bindKey("[", function()
  tile.tileWindow(tile.screenPositions.topCenterThird)
end)

hyper.bindKey(".", function()
  tile.tileWindow(tile.screenPositions.bottomCenterThird)
end)

hyper.bindKey("]", function()
  tile.tileWindow(tile.screenPositions.topRightThird)
end)

hyper.bindKey("/", function()
  tile.tileWindow(tile.screenPositions.bottomRightThird)
end)

hyper.bindKey("up", function()
  tile.windowMaximize(0)
end)

hyper.bindKey("left", function()
  tile.tileWindow(tile.screenPositions.leftHalf)
end)

hyper.bindKey("right", function()
  tile.tileWindow(tile.screenPositions.rightHalf)
end)

-- binding app to hyper --
hyper.bindKey("c", app.openchrome)


hyper.bindKey("t", function()
  app.openiterm()
end)

-- bit.studio work script --
hyper.bindKey("b", function()
  app.openchromewithwork()
  tile.tileWindow(tile.screenPositions.bottomRightThird)

  app.openchrome()
  tile.tileWindow(tile.screenPositions.leftThird)

  app.openiterm()
  tile.tileWindow(tile.screenPositions.topRightThird)
end)