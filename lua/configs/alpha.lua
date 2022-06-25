
--[[------------------------------]]--
--       Alpha - welcome screen     --
--          Author: elai            --
--         License: GPLv3           --
--[[------------------------------]]--

-- Load Alpha with a protected call
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
    return
end

-- Enable Alpha dashboard
local dashboard = require("alpha.themes.dashboard")

-- Disable the statusline to make the dashboard look clean
vim.cmd [[ au User AlphaReady if winnr('$') == 1 | set laststatus=1 ]]

-- Custom Footer
dashboard.section.footer.val = {
    "Write Programs That Do One Thing And Do It Well.",
}

-- Custom Section
dashboard.section.buttons.val = {
	  dashboard.button("n", "  Create New file",       ":set laststatus=3 | :ene <BAR> startinsert <CR>"),
    dashboard.button("r", "  Open Recent Files",     ":set laststatus=3 | :Telescope oldfiles <CR>"),
    dashboard.button("v", "  Neovim Settings",       ":set laststatus=3 | e ~/.config/nvim/init.lua <CR>"),
	  dashboard.button("u", "  Update Nvim Plugins",   ":PackerSync <CR>"),
	  dashboard.button("q", "  Quit Neovim",           ":qa<CR>"),
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

-- Layout for luavim ascii art
dashboard.config.layout = {
    { type = "padding", val = 6 },
    dashboard.section.header,
    { type = "padding", val = 2 },
    dashboard.section.buttons,
    { type = "padding", val = 1 },
    dashboard.section.footer,
}

-- -- Neovim ascii art
-- dashboard.section.header.val = {
--     [[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
--     [[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
--     [[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
--     [[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
--     [[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
--     [[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
-- }

-- -- Layout for Neovim ascii art
-- dashboard.config.layout = {
--     { type = "padding", val = 5 },
--     dashboard.section.header,
--     { type = "padding", val = 2 },
--     dashboard.section.buttons,
--     { type = "padding", val = 1 },
--     dashboard.section.footer,
-- }

-- -- Doom Neovim ascii art
-- dashboard.section.header.val = {
--     [[=================     ===============     ===============   ========  ========]],
--     [[\\ . . . . . . .\\   //. . . . . . .\\   //. . . . . . .\\  \\. . .\\// . . //]],
--     [[||. . ._____. . .|| ||. . ._____. . .|| ||. . ._____. . .|| || . . .\/ . . .||]],
--     [[|| . .||   ||. . || || . .||   ||. . || || . .||   ||. . || ||. . . . . . . ||]],
--     [[||. . ||   || . .|| ||. . ||   || . .|| ||. . ||   || . .|| || . | . . . . .||]],
--     [[|| . .||   ||. _-|| ||-_ .||   ||. . || || . .||   ||. _-|| ||-_.|\ . . . . ||]],
--     [[||. . ||   ||-'  || ||  `-||   || . .|| ||. . ||   ||-'  || ||  `|\_ . .|. .||]],
--     [[|| . _||   ||    || ||    ||   ||_ . || || . _||   ||    || ||   |\ `-_/| . ||]],
--     [[||_-' ||  .|/    || ||    \|.  || `-_|| ||_-' ||  .|/    || ||   | \  / |-_.||]],
--     [[||    ||_-'      || ||      `-_||    || ||    ||_-'      || ||   | \  / |  `||]],
--     [[||    `'         || ||         `'    || ||    `'         || ||   | \  / |   ||]],
--     [[||            .===' `===.         .==='.`===.         .===' /==. |  \/  |   ||]],
--     [[||         .=='   \_|-_ `===. .==='   _|_   `===. .===' _-|/   `==  \/  |   ||]],
--     [[||      .=='    _-'    `-_  `='    _-'   `-_    `='  _-'   `-_  /|  \/  |   ||]],
--     [[||   .=='    _-'          '-__\._-'         '-_./__-'         `' |. /|  |   ||]],
--     [[||.=='    _-'                                                     `' |  /==.||]],
--     [[=='    _-'                        N E O V I M                         \/   `==]],
--     [[\   _-'                                                                `-_   /]],
--     [[ `''                                                                      ``' ]],
-- }

-- -- Layout for Doom Neovim ascii art
-- dashboard.config.layout = {
--     { type = "padding", val = 3 },
--     dashboard.section.header,
--     { type = "padding", val = 2 },
--     dashboard.section.buttons,
--     { type = "padding", val = 1 },
--     dashboard.section.footer,
-- }

-- source for ascii art
-- https://textkool.com/en/ascii-art-generator?hl=default&vl=default&font=Red+Phoenix&text=Your+text+here+

alpha.setup(dashboard.opts)
