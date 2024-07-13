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

Treesiter as a syntax highlighter

#### Functionality #####
***
* Telescope: https://github.com/nvim-telescope/telescope.nvim
* Fugative: https://github.com/tpope/vim-fugitive
* Gitsigns: https://github.com/lewis6991/gitsigns.nvim
* Harpoon: https://github.com/ThePrimeagen/harpoon
* Mason: https://github.com/williamboman/mason.nvim
* Nvim-cmp: https://github.com/hrsh7th/nvim-cmp
* Treesiter: https://github.com/nvim-treesitter/nvim-treesitter

#### Aesthetics #####
***
* Aura (colorscheme): https://github.com/techtuner/aura-neovim
* Lualine: https://github.com/nvim-lualine/lualine.nvim

## Remaps ##

`,`: Leader key

`<leader>e`: Open netrw directory listings

`<leader>b`: Go to previous buffer

`<leader>v`: Vertical split

`<leader>s`: Source file in current buffer.

#### Split navigation ####

'<c-h>' : Move to left 
'<c-l>' : Move to right
'<c-k>' : Move up
'<c-j>' : Move down

#### LSP #####
***

`<K>`: Displays hover information about the symbol under the cursor in a floating window.

`<gd>`: Jumps to the definition of the symbol under the cursor.

`<F4>`: Selects a code action available at the current cursor position.

`<C-n>`: Goes to next availible suggested completion option.

`<CR>`: Confirms suggested completion.


####  Fugative  ####
***

`<leader>g`: Opens vim-fugative in veritcal split.

`<leader>gb`: Git blame.

`<leader>gl`: Git log

`<leader>gl`: Git log --oneline

`-`: Stage or unstage file under the cursor

`=`: Show changes in file under the cursor

#### Telescope ####
***

`<leader>ff`: Find files.

`<leader>fg`: Live grep.

`<leader>fb`: Buffers.

#### Harpoon  ####
***

`<C-e>`: Open Harpoon UI.

`<leader>a`: Add file in current buffer to Harpoon navigation list.

`<C-q>`: Go to first file in Harpoon navigation list.

`<C-w>`: Go to second file in Harpoon navigation list.

`<C-t>`: Go to third file in Harpoon navigation list.

`<C-t>`: Run tmux switch sricpt located under tmux_scripts


## Installation ##
If you already have nvim configuration, you might wan't to do a backput first and then install this one with:
```
git -C ~/.config/ clone https://github.com/jkeresman01/Minimalistic-Neovim-configuration.git nvim
```
