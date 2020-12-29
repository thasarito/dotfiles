local u = hs.geometry.unitrect

IDEs = {
  "Code"
}

local detectIDE = function()
  local ide = nil
  for _, v in ipairs(IDEs) do
    if hs.application.get(v) then
      ide = v
      break
    end
  end
  return ide
end

layoutHome = function()
  local ide = detectIDE()
  local right = {}
end