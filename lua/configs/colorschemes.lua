
--[[---------------------------------------]]--
--       colorscheme - nord colorscheme      --
--               Author: elai                --
--              License: GPLv3               --
--[[---------------------------------------]]--

-- Nord colorscheme options
vim.g.nord_contrast = true
vim.g.nord_disable_background = true
vim.g.nord_cursorline_transparent = false
vim.g.nord_borders = false
vim.g.nord_italic = false

-- Load nord colorscheme with A protected call
local colorscheme = "nord"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
