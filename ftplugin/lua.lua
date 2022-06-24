
--[[--------------------------------------]]--
--      lua.lua - Init file of LuaVim       --
--               Author: elai               --
--              License: GPLv3              --
--[[--------------------------------------]]--

-- Fixing 'gf' command for lua files
vim.opt_local.suffixesadd:prepend('.lua')
vim.opt_local.suffixesadd:prepend('init.lua')
vim.opt_local.path:prepend(vim.fn.stdpath('config')..'/lua')
