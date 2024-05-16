# Minimalistic neovim configuration #
Simple, lightweight & minimalistic neovim configuration including only essential plugins.

[![asciicast](https://asciinema.org/a/659647.svg)](https://asciinema.org/a/659647)

## Package manager ##
Although unmaintained from August, 2023, I'am still using Packer as my package manager.

Installing packer:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
You can find more information about packer here:
https://github.com/wbthomason/packer.nvim

## Plugins ##
I'am using only few essential plugins such as:

telesopce & harpoon for fuzzy finding and file navigation.

vim-fugative and gitsigns as git integration tools.

Mason as lsp, formatter, linter.

nvim-cmp as a completion engine

#### Functionality #####
* Telescope: https://github.com/nvim-telescope/telescope.nvim
* Fugative: https://github.com/tpope/vim-fugitive
* Gitsigns: https://github.com/lewis6991/gitsigns.nvim
* Harpoon: https://github.com/ThePrimeagen/harpoon
* Mason: https://github.com/williamboman/mason.nvim
* Nvim-cmp: https://github.com/hrsh7th/nvim-cmp

#### Aesthetics #####
* Aura (colorscheme): https://github.com/techtuner/aura-neovim
* Lualine: https://github.com/nvim-lualine/lualine.nvim

## Installation ##
If you already have nvim configuration, you might wan't to do a backput first and then install this one with:
```
git -C ~/.config/ clone https://github.com/jkeresman01/Minimalistic-Neovim-configuration.git
```
