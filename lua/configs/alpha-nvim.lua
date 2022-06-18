
--[[--------------------------------------]]--
--        alpha-nvim - welcome screen       --
--               Author: elai               --
--              License: GPLv3              --
--[[--------------------------------------]]--

-- Require Alpha With A protected call
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

-- Enable Alpha Dashboard
local dashboard = require("alpha.themes.dashboard")

-- Remove These ~ ~ ~
vim.opt.fillchars:append { eob = " " }

-- Disable Status Line so that alpha dashboard look nice
vim.cmd [[ au User AlphaReady if winnr('$') == 1 | set laststatus=1 ]]

-- Custom Footer
dashboard.section.footer.val = {
  "Write Programs That Do One Thing And Do It Well.",
}

-- Custom Section
dashboard.section.buttons.val = {
	dashboard.button("n", "  Create New file",       ":set laststatus=3 | :ene <BAR> startinsert <CR>"),
	dashboard.button("e", "  Open File Explorer",    ":set laststatus=3 | :NvimTreeOpen <CR>"),
  dashboard.button("v", "  Neovim Settings ",      ":set laststatus=3 | e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("u", "  Update Nvim Plugins",   ":PackerSync <CR>"),
	dashboard.button("q", "  Quit Neovim",           ":qa<CR>"),
}

-- Luavim Ascii Art
dashboard.section.header.val = {
  [[██╗     ██╗   ██╗  █████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
  [[██║     ██║   ██║ ██╔══██╗ ██║   ██║ ██║ ████╗ ████║]],
  [[██║     ██║   ██║ ███████║ ██║   ██║ ██║ ██╔████╔██║]],
  [[██║     ██║   ██║ ██╔══██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
  [[███████╗╚██████╔╝ ██║  ██║  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
  [[╚══════╝ ╚═════╝  ╚═╝  ╚═╝   ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}

-- Layout For Luavim ascii art
dashboard.config.layout = {
  { type = "padding", val = 5 },
  dashboard.section.header,
  { type = "padding", val = 2 },
  dashboard.section.buttons,
  { type = "padding", val = 1 },
  dashboard.section.footer,
}

-- -- Neovim ascii art
-- dashboard.section.header.val = {
--   [[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
--   [[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
--   [[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
--   [[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
--   [[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
--   [[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
-- }

-- -- Layout For Neovim ascii art
-- dashboard.config.layout = {
--   { type = "padding", val = 5 },
--   dashboard.section.header,
--   { type = "padding", val = 2 },
--   dashboard.section.buttons,
--   { type = "padding", val = 1 },
--   dashboard.section.footer,
-- }

-- -- Doom Neovim ascii art
-- dashboard.section.header.val = {
--   [[=================     ===============     ===============   ========  ========]],
--   [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
--   [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
--   [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
--   [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
--   [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
--   [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
--   [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
--   [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
--   [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
--   [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
--   [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
--   [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
--   [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
--   [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
--   [[||.=='    _-'                                                     `' |  /==.||]],
--   [[=='    _-'                        N E O V I M                         \/   `==]],
--   [[\   _-'                                                                `-_   /]],
--   [[ `''                                                                      ``' ]],
-- }

-- -- Layout For Doom Neovim ascii art
-- dashboard.config.layout = {
--   { type = "padding", val = 3 },
--   dashboard.section.header,
--   { type = "padding", val = 2 },
--   dashboard.section.buttons,
--   { type = "padding", val = 1 },
--   dashboard.section.footer,
-- }

-- source for ascii art
-- https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=Red+Phoenix&text=Your+text+here+

alpha.setup(dashboard.opts)
