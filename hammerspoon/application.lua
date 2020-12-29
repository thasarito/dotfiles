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

exports.openiterm = function() 
  return hs.osascript.applescript([[
    tell application "iTerm2"
      create window with default profile
    end tell
  ]])
 end

return exports