
--[[-------------------------------------]]--
--      colorizer - colors highlighter     --
--             Author: elai                --
--            License: GPLv3               --
--[[-------------------------------------]]--

-- Load colorizer with a protected call
local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
    return
end

-- Toggle colorizer on enter
vim.cmd[[autocmd VimEnter * :ColorizerToggle]]
