
--[[--------------------------------------]]--
--        neoscroll - smooth scrolling      --
--              Author: elai                --
--             License: GPLv3               --
--[[--------------------------------------]]--

require('neoscroll').setup({
    pre_hook = function(info) if info == "cursorline" then vim.wo.cursorline = false end end,
    post_hook = function(info) if info == "cursorline" then vim.wo.cursorline = true end end
})

local t = {}

-- ['alt + u'] for scrolling up , ['alt + d'] for scrolling down
t['<A-u>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '250'}}
t['<A-d>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '250'}}

-- ['alt + k'] for scrolling up , ['alt + j'] for scrolling down)
t['<A-k>'] = {'scroll', {'-vim.wo.scroll', 'false', '150', [['sine']]}}
t['<A-j>'] = {'scroll', { 'vim.wo.scroll', 'false', '150', [['sine']]}}

-- ['ctrl + b'] for scrolling up , ['ctrl + f'] for scrolling down)
t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '250'}}
t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '250'}}

-- When no easing function is provided the default easing function (in this case "quadratic") will be used
t['zz'] = {'zz', {'200'}}
t['zb'] = {'zb', {'200'}}
t['zt'] = {'zt', {'200'}}

require('neoscroll.config').set_mappings(t)
