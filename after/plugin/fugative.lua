--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: fugative.lua
-- Description: Git related stuff, read Pro Git book for more info
-- Author: Josip Keresman


vim.keymap.set("n", "<leader>g", "<cmd>vs<CR><cmd>0Git<CR>")
vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>")
vim.keymap.set("n", "<leader>gl", "<cmd>vs<CR><cmd>0Git log %<CR>")
vim.keymap.set("n", "<leader>glo", "<cmd>vs<CR><cmd>0Git log --oneline %<CR>")
vim.keymap.set("n", "<leader>gll", "<cmd>vs<CR><cmd>0Git log -1 HEAD<CR>")
vim.keymap.set("n", "<leader>gc", "<cmd>0Git commit<CR>")
vim.keymap.set("n", "<leader>gca", "<cmd>0Git commit --amend<CR>")
vim.keymap.set("n", "<leader>glr", "<cmd>vs<CR><cmd>Git log --reverse --no-decorate %<CR>")
vim.keymap.set("n", "<leader>glg", "<cmd>vs<CR><cmd>Git log --graph<CR>")
vim.keymap.set("n", "<leader>glgo", "<cmd>vs<CR><cmd>Git log --graph --oneline<CR>")
vim.keymap.set("n", "<leader>grs", "<cmd>Git reset --soft HEAD~1<CR>")
vim.keymap.set("n", "<leader>grh", "<cmd>Git reset --hard HEAD~1<CR>")
