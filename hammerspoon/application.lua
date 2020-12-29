local exports = {}

function openByApplescript(app)
  local script = [[
    tell application "]] .. app .. [["
      make new window
      activate
    end tell
    ]]

  return hs.osascript.applescript(script)
end

exports.openchrome = function() openByApplescript("/Applications/Google Chrome.app") end

return exports