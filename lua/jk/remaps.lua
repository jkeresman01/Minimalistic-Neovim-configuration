vim.g.mapleader = ","

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>b", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>v", vim.cmd.vs)
vim.keymap.set("n", "<leader>s", vim.cmd.so)

vim.keymap.set("n", "<leader>ss", "<cmd>set spell")
vim.keymap.set("n", "<leader>sns", "<cmd>set nospell")
vim.keymap.set("n", "<leader>srn", "<cmd>set relativenumber")
vim.keymap.set("n", "<leader>snrn", "<cmd>set relativenumber")
vim.keymap.set("n", "<leader>sn", "<cmd>set number")
vim.keymap.set("n", "<leader>snn", "<cmd>set nonumber")

vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<CR>")
