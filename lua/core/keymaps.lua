
--[[------------------------------------]]--
--       keymaps - general mappings       --
--             Author: elai               --
--            License: GPLv3              --
--[[------------------------------------]]--

-- Shorten function name
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Remap space as leader key
map("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-----------------
-- Normal Mode --
-----------------
-- Mappings for moving through splits
map("n", "<A-h>", "<C-w>h", {})
map("n", "<A-j>", "<C-w>j", {})
map("n", "<A-k>", "<C-w>k", {})
map("n", "<A-l>", "<C-w>l", {})

-- Resize current buffer by +/- 2
map("n", "<C-h>", ":vertical resize +2<cr>", {})
map("n", "<C-j>", ":resize +2<cr>", {})
map("n", "<C-k>", ":resize -2<cr>", {})
map("n", "<C-l>", ":vertical resize -2<cr>", {})

-- Alternate way to save and quit nvim
map("n", "<A-w>", ":w<CR>", {})  -- save file
map("n", "<A-q>", ":q<CR>", {})  -- quit nvim
map("n", "<A-1>", ":q!<CR>", {}) -- quit without saving

-- Nvim Comment
map("n", "<leader>c", ":CommentToggle<CR>", {}) -- Comment One Line
map("n", "<leader>p", "vip:CommentToggle<CR>", {}) -- Comment A Paragraph
map("x", "<leader>c", ":'<,'>CommentToggle<CR>", {}) -- Comment Multiple Lines In Visual Mode

-- Don't accidently create macros when trying to quit
map('n', 'Q', 'q', {})
map('n', 'q', '<nop>', {})

-- GitSings
map('n', "<leader>gp", ":Gitsigns preview_hunk<CR>", {})  -- preview_hunk
map('n', "<leader>gr", ":Gitsigns reset_buffer<CR>", {})  -- reset_buffer

-- Toggle Alpha Dashboard
map('n', "<leader>a", ":set laststatus=3<CR> | :Alpha<CR>", {})

-- Toggle NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", {})

-- Yank entire line
map("n", "yie", ":<C-u>%y<CR>", {})

-- Packer Update
map("n", "<leader>u", ":PackerSync<CR>", {})

-- Telescope Mappings
map("n", "<Leader>b", "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {}) -- preview buffers
map("n", "<Leader>of", "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {}) -- old files
map("n", "<Leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {}) -- Find files
map("n", "<leader>gs", ":Telescope git_status<CR>", {}) -- git status

-----------------
-- Insert Mode --
-----------------
-- Map Escape Key To kj
map ("i", "kj", "<ESC>", {})

-- Fix One [Car] behind
map ("i", "<Esc>", "<Esc>`^", {})

-- Center screen after search
vim.cmd([[
nnoremap n nzzzv
nnoremap N Nzzzv
]])

-- Auto Pairs
vim.cmd([[
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap " ""<left>
inoremap ' ''<left>
]])

-----------------
-- Visual Mode --
-----------------
-- Move Text Up And Down
vim.cmd([[
nnoremap <C-A-J> :m .+1<CR>==
nnoremap <C-A-K> :m .-2<CR>==
inoremap <C-A-J> <Esc>:m .+1<CR>==gi
inoremap <C-A-K> <Esc>:m .-2<CR>==gi
vnoremap <C-A-J> :m '>+1<CR>gv=gv
vnoremap <C-A-K> :m '<-2<CR>gv=gv
]])
