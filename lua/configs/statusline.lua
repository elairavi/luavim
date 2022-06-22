
--[[----------------------------------------]--
--           Lualine - statusline            --
--    Author: elai, shadmansaleh, glepnir    --
--            License: GPLv3                 --
--[[---------------------------------------]]--

-- Forked from : https://github.com/nvim-lualine/lualine.nvim/blob/master/examples/evil_lualine.lua

-- Load lualine with a protected call
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
    return
end

-- Color table for highlights
local colors = {
    bg       = '#0c1014',
    fg       = '#bbc2cf',
    yellow   = '#ECBE7B',
    cyan     = '#008080',
    darkblue = '#081633',
    green    = '#B7BD82',
    orange   = '#8d6141',
    violet   = '#B294BB',
    magenta  = '#AE84BB',
    blue     = '#81A2BE',
    red      = '#CC8282',
}

local conditions = {
    buffer_not_empty = function()
        return vim.fn.empty(vim.fn.expand('%:t')) ~= 1
    end,
    hide_in_width = function()
        return vim.fn.winwidth(0) > 80
    end,
    check_git_workspace = function()
        local filepath = vim.fn.expand('%:p:h')
        local gitdir = vim.fn.finddir('.git', filepath .. ';')
        return gitdir and #gitdir > 0 and #gitdir < #filepath
    end,
}

-- Config
local config = {
    options = {
        component_separators = '',
        section_separators = '',
        theme = {
            normal = { c = { fg = colors.fg, bg = colors.bg } },
            inactive = { c = { fg = colors.fg, bg = colors.bg } },
        },
    },

    -- These are to remove the defaults
    sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
    -- These are to remove the defaults
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_z = {},
        lualine_c = {},
        lualine_x = {},
    },
}

-- Inserts a component in lualine_c at left section
local function ins_left(component)
    table.insert(config.sections.lualine_c, component)
end

-- Inserts a component in lualine_x ot right section
local function ins_right(component)
    table.insert(config.sections.lualine_x, component)
end

-- Begining Of The StatusLine
ins_left {
    function()
        return '▎'
    end,
    color = { fg = colors.blue },
    padding = { left = 0, right = 1 },
}

-- Icon for diffrent mode:  -- normal -- | -- insert -- | -- visual -- | -- command --
ins_left {
    function()
        return ''
    end,
    color = function()

-- Auto change color according to neovim's mode
local mode_color = {
        n = colors.green,
        i = colors.blue,
        v = colors.magenta,
        [''] = colors.magenta,
        V = colors.magenta,
        c = colors.red,
        no = colors.red,
        s = colors.orange,
        S = colors.orange,
        [''] = colors.orange,
        ic = colors.yellow,
        R = colors.violet,
        Rv = colors.violet,
        cv = colors.red,
        ce = colors.red,
        r = colors.cyan,
        rm = colors.cyan,
        ['r?'] = colors.cyan,
        ['!'] = colors.red,
        t = colors.red,
    }
          return { fg = mode_color[vim.fn.mode()] }
      end,
   padding = { right = 0 },
}

-- File Name
ins_left {
    'filename',
    file_status = true, -- Displays file status (readonly status, modified status)
    path = 2, -- 0: Just the filename
    -- 1: Relative path
    -- 2: Absolute path
    shorting_target = 0, -- Shortens path to leave 40 spaces in the window
    symbols = {
        modified = '  ', -- Text to show when the file is modified.
        readonly = '  ', -- Text to show when the file is non-modifiable or readonly.
        unnamed = '[No Name]', -- Text to show for unnamed buffers.
    }
}

-- Git Diff
local function diff_source()
    local gitsigns = vim.b.gitsigns_status_dict
    if gitsigns then
        return {
            added = gitsigns.added,
            modified = gitsigns.changed,
            removed = gitsigns.removed
        }
    end
end

ins_right { 'diff',source = diff_source}

-- Git Branch
ins_right {
    'branch',
    icon = '',
    -- icon = '',
    -- color = { fg = colors.green },
}

-- File Type
ins_right {
    'filetype',
    icon_only = true,
    padding = { right = 2, left = 1 }
}

-- File Encoding
ins_right {
    'o:encoding',
    cond = conditions.hide_in_width,
    padding = { right = 2 },
    -- color = { fg = colors.green, gui = 'bold' },
    -- fmt = string.upper,
}

-- File Format
ins_right {
    'fileformat',
     padding = { right = 2 },
     symbols = { unix = 'unix '},
     -- color = { fg = colors.green, gui = 'bold' },
     -- icons_enabled = false,
}

-- File Size
ins_right {
    'filesize',
    padding = { right = 2 },
    cond = conditions.buffer_not_empty,
}

-- Text Progress
ins_right {
    'progress',
    padding = { right = 1 },
}

-- File Location
ins_right {
    'location',
    padding = { right = 0 },
}

-- Insert mid section. You can make any number of sections in neovim :)
-- For lualine it's any number greater then 2
ins_left {
    function()
        return '%='
    end,
}

-- End Of The Status Bar
ins_right {
    function()
        return '▎'
    end,
    color = { fg = colors.blue },
    padding = { left = 1, right = 0 },
}

-- Now don't forget to initialize lualine
lualine.setup(config)

-- Set one statusline on all buffers
vim.opt.laststatus = 3
