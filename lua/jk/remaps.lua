----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: remaps.lua
-- Description: Some weird remaps that make sense only to me
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Leader Key
-- Sets the global leader to comma. All <leader> mappings use this prefix.
--
----------------------------------------------------------------------------
vim.g.mapleader = ","

----------------------------------------------------------------------------
--
-- General
-- Quick access to file explorer, buffer navigation, splits, and sourcing.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>e", vim.cmd.Explore)
vim.keymap.set("n", "<leader>b", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>v", vim.cmd.vs)
vim.keymap.set("n", "<leader>s", vim.cmd.so)

----------------------------------------------------------------------------
--
-- Set / Unset Toggles
-- Fast toggles for spelling, relative numbers, and absolute numbers.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>ss", "<cmd>set spell")
vim.keymap.set("n", "<leader>sns", "<cmd>set nospell")
vim.keymap.set("n", "<leader>srn", "<cmd>set relativenumber")
vim.keymap.set("n", "<leader>snrn", "<cmd>set norelativenumber")
vim.keymap.set("n", "<leader>sn", "<cmd>set number")
vim.keymap.set("n", "<leader>snn", "<cmd>set nonumber")

----------------------------------------------------------------------------
--
-- Split Navigation
-- Move between splits using Ctrl + h/j/k/l.
---
----------------------------------------------------------------------------
vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<CR>")
