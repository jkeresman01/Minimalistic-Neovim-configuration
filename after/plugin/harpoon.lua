--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: harpoon.lua
-- Description: With this you can switch between files that you use most often really quick, someting like intellijs or visual studios ctrl+tab
-- Author: Josip Keresman

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local tmux = require("harpoon.tmux")

vim.keymap.set("n", "<C-e>", function()
    ui.toggle_quick_menu()
end)

vim.keymap.set("n", "<leader>a", function()
    mark.add_file()
end)

vim.keymap.set("n", "<C-q>", function()
    ui.nav_file(1)
end)

vim.keymap.set("n", "<C-w>", function()
    ui.nav_file(2)
end)

vim.keymap.set("n", "<C-t>", function()
    ui.nav_file(3)
end)

vim.keymap.set("n", "<C-z>", function()
    tmux.sendCommand(1, "~/random_script/tmux_switch.sh\n")
end)
