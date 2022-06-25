
![luavim](img/screenshot1.png?raw=true)
![tree+split](img/screenshot2.png?raw=true)

## Description

* **Luavim** is a simple **neovim** configuration written in **lua**, aiming to provide a **base** config, so users could tweak the defaults, remove the things they don't like, and build their config on top of it.

## Table of Contents

* [Plugins List](#plugins-list)
* [Directory Tree](#directory-tree)
* [Installation](#installation)
* [Configuration Check](#configuration-check)
* [Uninstalation](#uninstalation)
* [Resources](#resources)

## Plugins List

- [packer.nvim](https://github.com/wbthomason/packer.nvim) -  A use-package inspired plugin manager for Neovim
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Nvim Treesitter configurations and abstraction layer
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) - A file explorer tree for neovim written in lua
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - A blazing fast and easy to configure neovim statusline plugin written in pure lua
- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons) - A Lua fork of vim-devicons
- [nvim-comment](https://github.com/terrortylor/nvim-comment) - A comment toggler for Neovim, written in Lua
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration for buffers
- [nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua) - The fastest Neovim colorizer
- [nord.nvim](https://github.com/shaunsingh/nord.nvim) - Neovim theme based off of the Nord Color Palette, written in lua with tree sitter support
- [alpha-nvim](https://github.com/goolord/alpha-nvim) - a lua powered greeter like vim-startify / dashboard-nvim
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - A completion plugin for neovim coded in Lua
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) - nvim-cmp source for buffer words
- [cmp-path](https://github.com/hrsh7th/cmp-path) - nvim-cmp source for path
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - Snippet Engine for Neovim written in Lua
- [impatient.nvim](https://github.com/lewis6991/impatient.nvim) - Improve startup time for Neovim
- [neoscroll.nvim](https://github.com/karb94/neoscroll.nvim) - Smooth scrolling neovim plugin written in lua
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) - A neovim lua plugin to help easily manage multiple terminal windows
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Find, filter, preview, pick. all lua, with telescope
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) - All the lua functions I don't want to write twice

## Directory Tree

```
├── ftplugin
│   └── lua.lua
├── init.lua
└── lua
    ├── configs
    │   ├── alpha.lua
    │   ├── colorizer.lua
    │   ├── colorschemes.lua
    │   ├── commentary.lua
    │   ├── completion.lua
    │   ├── gitsigns.lua
    │   ├── impatient.lua
    │   ├── neoscroll.lua
    │   ├── nvimtree.lua
    │   ├── statusline.lua
    │   ├── telescope.lua
    │   ├── toggleterm.lua
    │   └── treesitter.lua
    ├── core
    │   ├── keymaps.lua
    │   ├── options.lua
    │   └── plugins.lua
    └── utils
        └── utils.lua
```

## Installation

- Install [Neovim v0.7.x](https://github.com/neovim/neovim/releases/latest)
- Install a [nerd font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts) (for the font in the screenshot, install [JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/JetBrainsMono/Ligatures))
- Follow this [guide](https://youtu.be/fR4ThXzhQYI?t=216) if you don't know how to install patched nerd-fonts
- Make sure you backup your current `nvim` directory

```term
mv ~/.config/nvim ~/.config/nvim_backup
mv ~/.local/share/nvim ~/.local/share/nvim_backup
```

- Download `luavim` with `git` and place it into `~/.config/nvim`

```term
git clone https://github.com/elairavi/luavim.git ~/.config/nvim
```

- Run `nvim` and wait for the plugins to be installed, when all the plugins are installed close neovim and reopen it
- You will notice treesitter pulling in a bunch of parsers the second time you open Neovim
- Note: checkout this file for some predefined [key-mappings](https://github.com/elairavi/luavim/blob/main/lua/core/keymaps.lua)

## Configuration check

- Open neovim with this flag `nvim +checkhealth` you should not see any errors in the output (except for the one related to Python):

![checkhealth](/img/checkhealth.png?raw=true)

* Note: If you're having a problem or some kinda of an error with a plugin, just run these commands:
```term
rm -rf ~/.cache/nvim
rm -rf ~/.config/nvim/plugin
rm -rf ~/.local/share/nvim
nvim
```

* If the problem persists open an [issue](https://github.com/elairavi/luavim/issues) and i will do what i can to help.

## Uninstalation

- Note: I suggeste you backup your config first, consider `mv ~/.config/nvim ~/.config/nvim_backup` and then run these commands to uninstall `luavim`

```term
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
```

## Resources

#### Neovim lua projects and examples

- https://github.com/LunarVim/nvim-basic-ide
- https://github.com/brainfucksec/neovim-lua
- https://github.com/siduck76/NvChad
- https://github.com/artart222/CodeArt
- https://github.com/crivotz/nv-ide

#### Guides and resources

- https://neovim.io/doc/user/lua.html
- https://github.com/nanotee/nvim-lua-guide
- https://dev.to/vonheikemen/everything-you-need-to-know-to-configure-neovim-using-lua-3h58
- https://www.old.reddit.com/r/neovim/

#### Lua resources

- Lua in Y minutes - https://learnxinyminutes.com/docs/lua/
- Lua Quick Guide - https://github.com/medwatt/Notes/blob/main/Lua/Lua_Quick_Guide.ipynb
- Lua 5.4 Reference Manual - https://www.lua.org/manual/5.4/

## Special Thanks

* Thanks to all the authors of the sources mentioned above, And special thanks to [ChristianChiarulli](https://github.com/ChristianChiarulli) and [brainfucksec](https://github.com/brainfucksec) For making this configuration possible.

<div align="center" id="madewithlua">

[![Lua](https://img.shields.io/badge/Made%20with%20Lua-blue.svg?style=for-the-badge&logo=lua)](#madewithlua)

</div>
