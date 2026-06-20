-- Clipboard Color Toggle

local clipboard = app.clipboard.text

if not clipboard then
  return
end

clipboard = clipboard:gsub("#", ""):upper()

-- If the clipboard content hasn't changed,
-- restore the previous color.
if _G.lastClipboardColor == clipboard then
  if _G.previousFgColor then
    local current = app.fgColor
    app.fgColor = _G.previousFgColor
    _G.previousFgColor = current
  end
  return
end

local color = nil

if #clipboard == 6 then
  color = Color{
    r = tonumber(clipboard:sub(1,2), 16),
    g = tonumber(clipboard:sub(3,4), 16),
    b = tonumber(clipboard:sub(5,6), 16)
  }
elseif #clipboard == 8 then
  color = Color{
    r = tonumber(clipboard:sub(1,2), 16),
    g = tonumber(clipboard:sub(3,4), 16),
    b = tonumber(clipboard:sub(5,6), 16),
    a = tonumber(clipboard:sub(7,8), 16)
  }
end

if color then
  _G.previousFgColor = app.fgColor
  _G.lastClipboardColor = clipboard
  app.fgColor = color
end