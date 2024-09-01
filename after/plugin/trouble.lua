require"trouble".setup {}

vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<CR>")
vim.keymap.set("n", "<leader>t", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>")
