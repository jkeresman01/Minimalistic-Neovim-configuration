# Minimalistic neovim configuration #

[![asciicast](https://asciinema.org/a/659647.svg)](https://asciinema.org/a/659647)

## Plugin manager ##
Although unmaintained from August, 2023, I'm still using Packer as my plugin manager.

Installing packer:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

You can find more information about packer here:
https://github.com/wbthomason/packer.nvim

## Plugins ##

*  Telescope && harpoon for fuzzy finding and file navigation.

*  TMUX switch for TMUX session managment within Neovim
  
*  Vim-fugative && gitsigns as git integration tools

*  Mason (lsp, formatter, linter).
  
*  Nvim-cmp as a completion engine.
  
*  Treesitter as a syntax highlighter.

#### Functionality #####
***
* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* [TMUX switch](https://github.com/jkeresman01/tmux-switch.nvim)
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
* [Harpoon](https://github.com/ThePrimeagen/harpoon)
* [Mason](https://github.com/williamboman/mason.nvim)
* [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

#### Aesthetics #####
***
* [Aura (colorscheme)](https://github.com/techtuner/aura-neovim)
* [Lualine](https://github.com/nvim-lualine/lualine.nvim)

## Remaps ##
***
### General ###

| Keybind       | Action                          |
|---------------|---------------------------------|
| `,`           | Leader key                      |

***

| Keybind       | Action                          |
|---------------|---------------------------------|
| `<leader>e`   | Open netrw directory listings   |
| `<leader>b`   | Go to previous buffer           |
| `<leader>v`   | Vertical split                  |
| `<leader>s`   | Source file in current buffer   |


### Split navigation ###
***

| Keybind       | Action         |
|---------------|----------------|
| `<c-h>`       | Move to left   |
| `<c-l>`       | Move to right  |
| `<c-k>`       | Move up        |
| `<c-j>`       | Move down      |

### Set - Unset ###

| Keybind       | Action                          |
|---------------|---------------------------------|
| `<leader>ss`  | Enable spelling check           |
| `<leader>sns` | Disable spelling check          |
| `<leader>srn` | Enable relative numbers         |
| `<leader>snrn`| Disable relative numbers        |
| `<leader>sn`  | Enable line numbers             |
| `<leader>snn` | Disable line numbers            |



### LSP ###
***

| Keybind       | Action                                                                            |
|---------------|-----------------------------------------------------------------------------------|
| `<K>`         | Displays hover information about the symbol under the cursor in a floating window |
| `<gd>`        | Jumps to the definition of the symbol under the cursor                            |
| `<F4>`        | Selects a code action available at the current cursor position                    |
| `<C-n>`       | Goes to next available suggested completion option                                |
| `<CR>`        | Confirms suggested completion                                                     |

### Fugitive ###
***

| Keybind       | Action                                      |
|---------------|---------------------------------------------|
| `<leader>g`   | Opens vim-fugitive in vertical split        |
| `<leader>gb`  | Git blame                                   |
| `<leader>gl`  | Git log                                     |
| `<leader>gl`  | Git log --oneline                           |
| `-`           | Stage or unstage file under the cursor      |
| `=`           | Show changes in file under the cursor       |

### Telescope ###
***
| Keybind       | Action          |
|---------------|-----------------|
| `<leader>ff`  | Find files      |
| `<leader>fg`  | Live grep       |
| `<leader>fb`  | Buffers         |
| `<leader>fh`  | Help tags       |


### TMUX switch ###
***

| Keybind       | Action                      |
|---------------|-----------------------------|
| `<C-f>`       | Open TMUX switch  UI        |
| `<leader>cs`  | Create new TMUX session     |
| `<leader>cs`  | Rename TMUX session         |

### Trouble ###
***

| Keybind       | Action                                         |
|---------------|------------------------------------------------|
| `<leader>t`   | Trouble diagnostics toggle                     |
| `<leader>t`   | Trouble diagnostics toggle (current buffer)    |


### Harpoon ###
***

| Keybind       | Action                                                        |
|---------------|---------------------------------------------------------------|
| `<C-e>`       | Open Harpoon UI                                               |
| `<leader>a`   | Add file in current buffer to Harpoon navigation list         |
| `<C-q>`       | Go to first file in Harpoon navigation list                   |
| `<C-w>`       | Go to second file in Harpoon navigation list                  |
| `<C-t>`       | Go to third file in Harpoon navigation list                   |
| `<C-z>`       | Run tmux switch script located under tmux_scripts             |
***


## Installation ##
If you already have nvim configuration, you might want to do a backup first and then install this one with:
```
git -C ~/.config/ clone https://github.com/jkeresman01/Minimalistic-Neovim-configuration.git nvim
```
