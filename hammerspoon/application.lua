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

 exports.openchromewithwork = function()
  return hs.osascript.applescript([[
    set myURLs to {"https://chat.google.com", ¬
        "https://www.gmail.com"}

    set myProfiles to {"Profile 1"}

    repeat with aProfile in myProfiles
        do shell script "open -na 'Google Chrome' --args --profile-directory=" & aProfile's quoted form
        delay 1
        tell application "Google Chrome"
            activate
            tell front window
                set URL of active tab to first item of myURLs
                delay 0.5
                repeat with i from 2 to count of myURLs
                    make new tab at after (get active tab) with properties {URL:item i of myURLs}
                    delay 0.5
                end repeat
                set active tab index to 1
            end tell
        end tell
        delay 1
    end repeat 
  ]])
end

return exports