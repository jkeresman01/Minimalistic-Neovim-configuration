vim.g.mapleader = ','

vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>b", vim.cmd.bprevious)
vim.keymap.set("n", "<leader>v", vim.cmd.vs)
vim.keymap.set("n", "<leader>s", vim.cmd.so)

vim.keymap.set("n", "<leader>sf", "<cmd>!g++ -c main.cpp && g++ main.o -o sfml-app -lsfml-graphics -lsfml-window -lsfml-system<CR>");
