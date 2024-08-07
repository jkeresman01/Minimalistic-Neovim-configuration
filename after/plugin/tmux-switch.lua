local tmux = require('tmux-switch')

vim.keymap.set("n", "<C-f>", function () tmux.switch() end)

vim.keymap.set("n", "<leader>cs", function () tmux.create_session() end)
vim.keymap.set("n", "<leader>rs", function () tmux.rename_session() end)
