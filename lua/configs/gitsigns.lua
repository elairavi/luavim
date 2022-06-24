
--[[-------------------------------------]]--
--        gitsigns - git for buffers       --
--     Author: elai, ChristianChiarulli    --
--             License: GPLv3              --
--[[-------------------------------------]]--

-- Load gitsigns with a protected call
local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
  return
end

-- Gitsigns options
gitsigns.setup {
  signs = {
    add = { hl = "GitSignsAdd", text = "+", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
    change = { hl = "GitSignsChange", text = "~", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
    delete = { hl = "GitSignsDelete", text = "_", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    topdelete = { hl = "GitSignsDelete", text = "‾", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
    changedelete = { hl = "GitSignsChange", text = "▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
  },
}
