
--[[--------------------------------------]]--
--      lua.lua - Init file of LuaVim       --
--               Author: elai               --
--              License: GPLv3              --
--[[--------------------------------------]]--

-- In Order For 'Gf' To Work
vim.opt_local.suffixesadd:prepend('.lua')
vim.opt_local.suffixesadd:prepend('init.lua')
vim.opt_local.path:prepend(vim.fn.stdpath('config')..'/lua')
