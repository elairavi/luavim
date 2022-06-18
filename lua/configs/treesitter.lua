
--[[---------------------------------------]]--
--      treesitter - syntax highlighting     --
--         Author: elai, brainfucksec        --
--              License: GPLv3               --
--[[---------------------------------------]]--

local status_ok, nvim_treesitter = pcall(require, 'nvim-treesitter.configs')
if not status_ok then
  return
end

nvim_treesitter.setup {
  -- A list of parser names, or "all" or just the "maintained" ones
  ensure_installed = {
    'bash', 'c', 'cpp','lua','python'
  },
  sync_install = false,
  highlight = {
    enable = true, -- `false` will disable the whole extension
  },
}
