
--[[------------------------------------]]--
--       options - general settings       --
--             Author: elai               --
--            License: GPLv3              --
--[[------------------------------------]]--

----------------------
-- General settings --
----------------------
local set = vim.opt
set.swapfile = false                         -- Don't use swapfile
set.updatetime = 0                           -- Faster completion
set.encoding="utf-8"                         -- The encoding displayed
set.fileencoding="utf-8"                     -- The encoding written to file
set.smartindent = true                       -- Makes indenting smart
set.iskeyword:append("-")                    -- Treat dash separated words as a word text object"
set.clipboard = "unnamedplus"                -- Copy paste between vim and everything else
set.smarttab = true                          -- Makes tabbing smarter will realize you have 2 vs 4
set.expandtab = true                         -- Converts tabs to spaces
set.autoindent = true                        -- Good auto indent
set.autochdir = true                         -- Your working directory will always be the same as your working directory
set.incsearch = true                         -- Sets incremental search
set.mouse = 'a'                              -- Enable mouse support
set.shell = "/bin/zsh"                       -- Set your shell to bash or zsh
set.shortmess:append "sI"                    -- Disable nvim intro
vim.cmd [[set nobackup]]                     -- Creates a backup file
vim.cmd [[set nowritebackup]]                -- Creates a backup file i guess
vim.cmd [[set formatoptions-=cro]]           -- Stop newline continution of comments
vim.cmd [[set complete+=kspell]]             -- Auto complete with spellcheck
vim.cmd [[set completeopt=menuone,longest]]  -- Auto complete menu (It's pretty great)
vim.cmd [[set nocompatible]]                 -- Disable compatibility to old-time vi

---------------
-- Neovim UI --
---------------
set.pumheight = 15                           -- Makes popup menu smaller
set.ruler = true              	             -- Show the cursor position all the time
set.splitbelow = true                        -- Horizontal splits will automatically be below
set.splitright = true                        -- Vertical splits will automatically be to the right
set.conceallevel = 0                         -- So that I can see `` in markdown files
set.tabstop = 2                              -- Insert 2 spaces for a tab
set.number = true                            -- Line numbers
set.background = "dark"                      -- Tell vim what the background color looks like
set.virtualedit = "onemore"                  -- With This option you can move the cursor one character over the end
set.ignorecase = true                        -- Ignores case when searching
set.smartcase = true                         -- Turns on case sensitive search when letters are capitalized
set.termguicolors = true                     -- Set term gui colors (most terminals support this)
set.laststatus=3                             -- Always display the status line
set.title = true                             -- Show current txt that you editing
set.relativenumber = false                   -- Vim’s absolute, relative and hybrid line numbers
set.cursorline = true                        -- Enable highlighting of the current line
set.shiftwidth = 2                           -- Change the number of space characters inserted for indentation
set.showtabline = 1                          -- Always show tabs
set.cmdheight = 1                            -- More space for displaying messages
set.numberwidth = 5                          -- Set number column width to 2 {default 4}
set.foldenable = false                       -- Disable folding text
vim.cmd [[setlocal conceallevel=2]]          -- Syntax conceal for markdown
vim.cmd [[set noshowmode]]                   -- We don't need to see things like -- INSERT -- anymore
vim.cmd [[syntax enable]]                    -- Enables syntax highlighing
vim.cmd [[set t_Co=256]]                     -- Support 256 colors
-- vim.cmd "set whichwrap+=<,>,[,],h,l"         -- Breaks Space-Time Continuum
-- vim.cmd [[set nowrap]]                       -- Display long lines as just one line

-----------------
-- Memory, CPU --
-----------------
set.hidden = true                            -- Required to keep multiple buffers open multiple buffers
set.timeoutlen = 500                         -- By default timeoutlen is 1000 ms
set.lazyredraw = true                        -- Disable lazyredraw
set.synmaxcol = 240                          -- Max column for syntax highlight
set.updatetime = 700                         -- ms to wait for trigger an event
