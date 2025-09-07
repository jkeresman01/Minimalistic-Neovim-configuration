----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: telescope.lua
-- Description: Project search utilities (files, grep, buffers, help).
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Requires
--
-- Load Telescope builtins.
--
----------------------------------------------------------------------------
local builtin = require("telescope.builtin")

----------------------------------------------------------------------------
--
-- Keymaps
--
-- <leader>ff : Find files
-- <leader>fg : Live grep
-- <leader>fb : List buffers
-- <leader>fh : Help tags
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope: find files",  silent = true })
vim.keymap.set("n", "<leader>fg", builtin.live_grep,  { desc = "Telescope: live grep",   silent = true })
vim.keymap.set("n", "<leader>fb", builtin.buffers,    { desc = "Telescope: buffers",     silent = true })
vim.keymap.set("n", "<leader>fh", builtin.help_tags,  { desc = "Telescope: help tags",   silent = true })

