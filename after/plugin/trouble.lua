----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: trouble.lua
-- Description: Navigate LSP diagnostics in a cool way.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Setup
--
-- Initialize trouble.nvim with defaults.
--
----------------------------------------------------------------------------
require("trouble").setup({})

----------------------------------------------------------------------------
--
-- Keymaps
--
-- <leader>tt : Toggle diagnostics (workspace)
-- <leader>t  : Toggle diagnostics (current buffer only)
---
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<CR>", {
  desc = "Trouble: toggle diagnostics (workspace)",
  silent = true,
})

vim.keymap.set("n", "<leader>t", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", {
  desc = "Trouble: toggle diagnostics (buffer)",
  silent = true,
})

