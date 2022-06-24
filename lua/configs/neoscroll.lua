
--[[--------------------------------------]]--
--        neoscroll - smooth scrolling      --
--              Author: elai                --
--             License: GPLv3               --
--[[--------------------------------------]]--

-- Load neoscroll with a protected call
local status_ok, neoscroll = pcall(require, "neoscroll")
if not status_ok then
   return
end

-- Neoscroll options
neoscroll.setup {
    pre_hook = function(info) if info == "cursorline" then vim.wo.cursorline = false end end,
    post_hook = function(info) if info == "cursorline" then vim.wo.cursorline = true end end
}

-- Custom mappings
local ns = {}

-- [alt + u for scrolling up] , [alt + d for scrolling down]
ns['<A-u>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '250'}}
ns['<A-d>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '250'}}

-- [ctrl + b for scrolling up] , [ctrl + f for scrolling down]
ns['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '250'}}
ns['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '250'}}

-- [alt + k for scrolling up] , [alt + j for scrolling down]
ns['<A-k>'] = {'scroll', {'-vim.wo.scroll', 'false', '150', [['sine']]}}
ns['<A-j>'] = {'scroll', { 'vim.wo.scroll', 'false', '150', [['sine']]}}

-- When no easing function is provided the default "quadratic" will be used
ns['zz'] = {'zz', {'200'}}
ns['zb'] = {'zb', {'200'}}

require('neoscroll.config').set_mappings(ns)
