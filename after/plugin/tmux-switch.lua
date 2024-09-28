require("tmux-switch").setup()

vim.keymap.set("n", "<C-f>", "<cmd>TmuxSwitch<CR>")
vim.keymap.set("n", "<leader>cs", "<cmd>TmuxCreateSession<CR>")
vim.keymap.set("n", "<leader>rs", "<cmd>TmuxRenameSession<CR>")
