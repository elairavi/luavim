
--[[--------------------------------------]--
--         telescope - fuzzy finder        --
--        Author: ChristianChiarulli       --
--             License: GPLv3              --
--[[-------------------------------------]]--

local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
   return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules" },

    mappings = {
      i = {
        ["<A-c>"] = actions.close,
        ["<A-j>"] = actions.move_selection_next,
        ["<A-k>"] = actions.move_selection_previous,
        ["<Up>"] = actions.cycle_history_prev,
        ["<Down>"] = actions.cycle_history_next,
      },
    },
  },
}
