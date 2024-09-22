<div align="center">
 
  <h1>Minimalistic neovim configuration</h1>
  <img src="https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png" alt="Neovim">

  <h3>The pragmatic programmer - TIP 27 "<i>Achive Editor Fluency"</i></h3>

  <h6>
   "Every maker starts their journey with the basic set of good quality tools. A woodworker might need rules, gauges, a couple of saws, some good planes, fine chisels, drills and braces, mallets, and clamps. These tools will be lovingly choosen, will be built to last, will perform specific jobs with litle overlap with other tools, and, perhaps and most importantly, will feel right in the budding woodworker's hands."
  </h6>

  <h6>
   "<b>Then begins the process of learning and adaptations.</b> Each tool will have its own personallity and quirks, and will need its own special handling. Each must be sharpened in a unique way, or held just so. Over time each will wear according to use, until the grip looks like a mold of woodworker's hands and cutting the surface aligns perfectly with the angle at which tool is held. <h5>At this point, the tools become conduits from the maker's brain to the finished product - they have become extensions of their hands"</h5>
  </h6>

  <h6>--- David Thomas, Andrew Hunt, "<i>The Pragmatic Programmer</i>" </h6>

[![asciicast](https://asciinema.org/a/659647.svg)](https://asciinema.org/a/659647)
  
</div>

## Table of Contents

- [Plugin manager](#plugin-manager)
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


## Plugins <a name="plugins"></a> ##

*  Telescope && harpoon for fuzzy finding and file navigation.

*  TMUX switch for TMUX session managment within Neovim
  
*  Vim-fugative && gitsigns as git integration tools

*  Mason (lsp, formatter, linter).
  
*  Nvim-cmp as a completion engine.
  
*  Treesitter as a syntax highlighter.

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
| `<F4>`        | Selects a code action available at the current cursor position                    |
| `<C-n>`       | Goes to next available suggested completion option                                |
| `<CR>`        | Confirms suggested completion option                                              |

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
| `<leader>cs`  | Rename current TMUX session                |


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
If you already have nvim configuration, you might want to do a backup first and then install this one with:
```
git -C ~/.config/ clone https://github.com/jkeresman01/Minimalistic-Neovim-configuration.git nvim
```
