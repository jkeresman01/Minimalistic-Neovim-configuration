----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: spring-initializr.lua
-- Description: Spring Initializr UI — generate Spring Boot projects from Neovim.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Setup
--
-- Initialize the Spring Initializr plugin (add options here if needed).
--
----------------------------------------------------------------------------
require("spring-initializr").setup()

----------------------------------------------------------------------------
--
-- Keymaps
--
-- <leader>si : Open Spring Initializr TUI
-- <leader>sg : Generate project to current directory
---
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>si", "<CMD>SpringInitializr<CR>",     { desc = "Spring Initializr: open UI",          silent = true })
vim.keymap.set("n", "<leader>sg", "<CMD>SpringGenerateProject<CR>", { desc = "Spring Initializr: generate project", silent = true })

