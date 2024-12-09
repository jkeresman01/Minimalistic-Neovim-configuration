<div align="center">
 
  <h1>Minimalistic neovim configuration</h1>
  <img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" alt="Neovim">

  <h6>---------------- [ Just my Neovim config ] ----------------</i></h6>

[![asciicast](https://asciinema.org/a/659647.svg)](https://asciinema.org/a/659647)
  
</div>

## Table of Contents

- [Plugin manager](#plugin-manager)
- [Repository structure](#repo)
- [Plugins](#plugins)
   - [Functionality](#functionality)
   - [Aesthetics](#aesthetics)
- [Remaps](#remaps)
   - [General](#general)
   - [Split navigation](#split-navigation)
   - [Set - Unset](#set-unset)
   - [LSP](#lsp)
   - [Fugative](#fugative)
   - [Gitsigns](#gitsigns)
   - [Telescope](#telescope)
   - [Tmux-switch](#tmux-switch)
   - [Harpoon](#harpoon)
   - [Trouble](#trouble)
- [Installation](#installation)


## Plugin manager <a name="plugin-manager"></a> ##
Although unmaintained from August, 2023, I'm still using Packer as my plugin manager.

For more information about packer you can refer to:
https://github.com/wbthomason/packer.nvim


Installing packer:

> Unix, Linux
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

> Windows Powershell

```shell
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

## Repository structure <a name="repo"></a> ##

```shell
nvim/
├── after
│   └── plugin
│       ├── fugative.lua
│       ├── gitsigns.lua
│       ├── harpoon.lua
│       ├── lsp.lua
│       ├── lualine.lua
│       ├── telescope.lua
│       ├── tmux-switch.lua
│       ├── treesiter.lua
│       └── trouble.lua
├── init.lua
├── lua
│   └── jk
│       ├── colorscheme.lua
│       ├── init.lua
│       ├── packer.lua
│       ├── remaps.lua
│       └── set.lua
├── README.md
└── tmux_script
    └── tmux_switch.sh
```

## Plugins <a name="plugins"></a> ##
*  Telescope && harpoon for fuzzy finding and file navigation.
*  TMUX switch for TMUX session managment within Neovim
*  Vim-fugative && gitsigns as git integration tools
*  Mason (lsp, formatter, linter).
*  Nvim-cmp as a completion engine.
*  Treesitter as a syntax highlighter.
*  Vim commentary for making commenting code a lot easier

#### Functionality <a name="functionality"></a>  #####

***
* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
* [TMUX switch](https://github.com/jkeresman01/tmux-switch.nvim)
* [Fugitive](https://github.com/tpope/vim-fugitive)
* [Gitsigns](https://github.com/lewis6991/gitsigns.nvim)
* [Harpoon](https://github.com/ThePrimeagen/harpoon)
* [Mason](https://github.com/williamboman/mason.nvim)
* [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
* [Vim commentary](https://github.com/tpope/vim-commentary)

#### Aesthetics <a name="aesthetics"></a>   #####
***
* [Aura (colorscheme)](https://github.com/techtuner/aura-neovim)
* [Lualine](https://github.com/nvim-lualine/lualine.nvim)

## Remaps <a name="remaps"></a>  ##
***
### General  <a name="general"></a> ###

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


### Split navigation <a name="split-navigation"></a> ###
***
| Keybind       | Action         |
|---------------|----------------|
| `<c-h>`       | Move to left   |
| `<c-l>`       | Move to right  |
| `<c-k>`       | Move up        |
| `<c-j>`       | Move down      |

### Set - Unset <a name="set-unset"></a> ###
***

| Keybind       | Action                          |
|---------------|---------------------------------|
| `<leader>ss`  | Enable spelling check           |
| `<leader>sns` | Disable spelling check          |
| `<leader>srn` | Enable relative numbers         |
| `<leader>snrn`| Disable relative numbers        |
| `<leader>sn`  | Enable line numbers             |
| `<leader>snn` | Disable line numbers            |

### LSP <a name="lsp"></a>  ###
***

| Keybind       | Action                                                                            |
|---------------|-----------------------------------------------------------------------------------|
| `<K>`         | Displays hover information about the symbol under the cursor in a floating window |
| `<gd>`        | Jumps to the definition of the symbol under the cursor                            |
| `<K>`         | Definition on hover                                                               |
| `<gr>`        | Show references                                                                   |
| `<gD>`        | Declaration                                                                       |
| `<gi>`        | Go to implementation                                                              |
| `<F4>`        | Selects a code action available at the current cursor position                    |
| `<C-n>`       | Goes to next available suggested completion option                                |
| `<CR>`        | Confirms suggested completion option                                              |
| `<leader>rn`  | Rename stuff under the cursor                                                     |

### Fugative <a name="fugative"></a>  ###
***

| Keybind       | Action                                        |
|---------------|-----------------------------------------------|
| `<leader>g`   | Opens vim-fugitive in vertical split (:0Git)  |
| `<leader>gc`  | Git commit                                    |
| `<leader>gca` | Git commit --amend                            |
| `<leader>gb`  | Git blame %                                   |
| `<leader>gl`  | Git log %                                     |
| `<leader>glo` | Git log --oneline %                           |
| `<leader>gll` | Git log -1 HEAD %                             |
| `<leader>gl5` | Git log -n 5                                  |
| `<leader>glp` | Git log --pretty=format:"%h - %an, %ar : %s"  |
| `<leader>glg` | Git log --graph                               |
| `<leader>glgo`| Git log --graph --oneline                     |
| `<leader>grs` | Git reset --soft HEAD~1                       |
| `<leader>grh` | Git reset --hard HEAD~1                       |
| `<leader>glr` | Git log --reverse --no-decorate               |
| `-`           | Stage or unstage file under the cursor        |
| `=`           | Show changes in file under the cursor         |

### Gitsigns <a name="gitsigns"></a>  ###
***

| Keybind       | Action                             |
|---------------|------------------------------------|
| `<leader>ph`  | Preview hunk                       |
| `<leader>sh`  | Stage hunk                         |
| `<leader>hh`  | Reset hunk                         |
| `<leader>ush` | Undo stage hunk                    |


### Telescope <a name="telescope"></a>  ###
***

| Keybind       | Action          |
|---------------|-----------------|
| `<leader>ff`  | Find files      |
| `<leader>fg`  | Live grep       |
| `<leader>fb`  | Buffers         |
| `<leader>fh`  | Help tags       |


### TMUX switch <a name="tmux-switch"></a>  ###
***

| Keybind       | Action                                     |
|---------------|--------------------------------------------|
| `<C-f>`       | Open TMUX switch UI                        |
| `<leader>cs`  | Create new TMUX session with given name    |
| `<leader>rs`  | Rename current TMUX session                |


### Trouble <a name="trouble"></a> ###
***

| Keybind       | Action                                         |
|---------------|------------------------------------------------|
| `<leader>tt`  | Trouble diagnostics toggle                     |
| `<leader>t`   | Trouble diagnostics toggle (current buffer)    |


### Harpoon <a name="harpoon"></a> ###
***

| Keybind       | Action                                                        |
|---------------|---------------------------------------------------------------|
| `<C-e>`       | Open Harpoon UI                                               |
| `<leader>a`   | Add file in current buffer to Harpoon navigation list         |
| `<C-q>`       | Go to first file in Harpoon navigation list                   |
| `<C-w>`       | Go to second file in Harpoon navigation list                  |
| `<C-t>`       | Go to third file in Harpoon navigation list                   |
| `<C-z>`       | Run tmux switch script located under /tmux_scripts directory  |
***


## Installation <a name="installation"></a>  ##
If you already have nvim configuration, you might want to do a backup first and then clone this one with:
```
git -C ~/.config/ clone https://github.com/jkeresman01/Minimalistic-Neovim-configuration.git nvim
```
