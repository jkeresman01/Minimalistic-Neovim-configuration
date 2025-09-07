----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: tmux-switch.lua
-- Description: Switch between tmux sessions in a fast, keyboard-friendly UI.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Setup
--
-- Initialize the tmux-switch plugin with defaults.
--
----------------------------------------------------------------------------
require("tmux-switch").setup({})

----------------------------------------------------------------------------
--
-- Keymaps
--
-- <C-f>      : Open TMUX Switch UI
-- <leader>cs : Create a new tmux session (prompt for name)
-- <leader>rs : Rename the current tmux session
---
----------------------------------------------------------------------------
vim.keymap.set("n", "<C-f>",      "<cmd>TmuxSwitch<CR>",        { desc = "TMUX Switch: open UI",        silent = true })
vim.keymap.set("n", "<leader>cs", "<cmd>TmuxCreateSession<CR>", { desc = "TMUX Switch: create session",  silent = true })
vim.keymap.set("n", "<leader>rs", "<cmd>TmuxRenameSession<CR>", { desc = "TMUX Switch: rename session",  silent = true })

