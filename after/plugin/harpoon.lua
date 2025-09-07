----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: harpoon.lua
-- Description: Fast file hopping (Harpoon) + a tmux helper action.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Requires
--
-- Harpoon modules: mark files, open UI, and talk to tmux.
--
----------------------------------------------------------------------------
local mark = require("harpoon.mark")
local ui   = require("harpoon.ui")
local tmux = require("harpoon.tmux")

----------------------------------------------------------------------------
--
-- Quick Menu
--
-- <C-e> : Toggle Harpoon quick menu.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<C-e>", function()
  ui.toggle_quick_menu()
end, { desc = "Harpoon: toggle quick menu", silent = true })

----------------------------------------------------------------------------
--
-- Mark Current File
--
-- <leader>a : Add current file to Harpoon list.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>a", function()
  mark.add_file()
end, { desc = "Harpoon: add file", silent = true })

----------------------------------------------------------------------------
-- Navigation
--
-- <C-q>/<C-w>/<C-t> : Jump to 1st/2nd/3rd marked file.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<C-q>", function()
  ui.nav_file(1)
end, { desc = "Harpoon: go to file 1", silent = true })

vim.keymap.set("n", "<C-w>", function()
  ui.nav_file(2)
end, { desc = "Harpoon: go to file 2", silent = true })

vim.keymap.set("n", "<C-t>", function()
  ui.nav_file(3)
end, { desc = "Harpoon: go to file 3", silent = true })

----------------------------------------------------------------------------
--
-- TMUX Helper
--
-- <C-z> : Send a command to tmux pane 1 (adjust path/command as needed).
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<C-z>", function()
  tmux.sendCommand(1, "~/random_script/tmux_switch.sh\n")
end, { desc = "Harpoon: tmux switch script", silent = true })

