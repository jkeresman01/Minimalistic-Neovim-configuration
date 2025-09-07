----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: floating_terminal.lua
-- Description: Remaps for toggling the floating terminal on/off.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Keymaps
-- <leader>ot : Toggle floating terminal (normal and terminal modes).
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>ot", "<cmd>FloatingTerminal<CR>", { desc = "Toggle floating terminal", silent = true })
vim.keymap.set("t", "<leader>ot", "<cmd>FloatingTerminal<CR>", { desc = "Toggle floating terminal", silent = true })

