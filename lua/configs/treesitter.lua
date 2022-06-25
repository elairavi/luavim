
--[[---------------------------------------]]--
--      treesitter - syntax highlighting     --
--               Author: elai                --
--              License: GPLv3               --
--[[---------------------------------------]]--

-- Load treesitter with a protected call
local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
    return
end

-- Treesitter options
nvim_treesitter.setup {
  -- A list of parser names, or "all" or just the "maintained" ones
  ensure_installed = {
    'bash', 'c', 'lua', 'python'
  },
  sync_install = false,
  highlight = {
    enable = true, -- `false` will disable the whole plugin
  },
}
