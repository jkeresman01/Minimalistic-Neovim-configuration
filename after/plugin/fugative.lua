----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: fugative.lua
-- Description: Git related stuff (see: Pro Git book for deeper context)
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Status / Main UI
--
-- <leader>g : Open Fugitive status in a vertical split.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>g", "<cmd>vs<CR><cmd>0Git<CR>", {
  desc = "Fugitive: status (vertical split)",
  silent = true,
})

----------------------------------------------------------------------------
--
-- Blame
--
-- <leader>gb : Toggle blame for the current file.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>gb", "<cmd>Git blame<CR>", {
  desc = "Fugitive: blame current file",
  silent = true,
})

----------------------------------------------------------------------------
-- Logs (current file and general)
--
-- <leader>gl   : Full log for current file (vertical split)
-- <leader>glo  : Oneline log for current file (vertical split)
-- <leader>gll  : Last commit (HEAD) details
-- <leader>glr  : Reverse log (no decorate) for current file (vertical split)
-- <leader>glg  : Graph view (all)
-- <leader>glgo : Graph view (oneline)
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>gl",  "<cmd>vs<CR><cmd>0Git log %<CR>",               { desc = "Fugitive: log for %",             silent = true })
vim.keymap.set("n", "<leader>glo", "<cmd>vs<CR><cmd>0Git log --oneline %<CR>",     { desc = "Fugitive: oneline log for %",     silent = true })
vim.keymap.set("n", "<leader>gll", "<cmd>vs<CR><cmd>0Git log -1 HEAD<CR>",         { desc = "Fugitive: HEAD (last commit)",    silent = true })
vim.keymap.set("n", "<leader>glr", "<cmd>vs<CR><cmd>Git log --reverse --no-decorate %<CR>", { desc = "Fugitive: reverse log for %", silent = true })
vim.keymap.set("n", "<leader>glg", "<cmd>vs<CR><cmd>Git log --graph<CR>",          { desc = "Fugitive: graph",                  silent = true })
vim.keymap.set("n", "<leader>glgo","<cmd>vs<CR><cmd>Git log --graph --oneline<CR>",{ desc = "Fugitive: graph oneline",          silent = true })

----------------------------------------------------------------------------
--
-- Commits
--
-- <leader>gc  : Commit
-- <leader>gca : Commit amend
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>gc",  "<cmd>0Git commit<CR>",            { desc = "Fugitive: commit",        silent = true })
vim.keymap.set("n", "<leader>gca", "<cmd>0Git commit --amend<CR>",    { desc = "Fugitive: commit --amend", silent = true })

----------------------------------------------------------------------------
--
-- Resets
--
-- <leader>grs : Soft reset to HEAD~1 (keep changes staged)
-- <leader>grh : Hard reset to HEAD~1 (discard changes)
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>grs", "<cmd>Git reset --soft HEAD~1<CR>", { desc = "Fugitive: reset --soft HEAD~1", silent = true })
vim.keymap.set("n", "<leader>grh", "<cmd>Git reset --hard HEAD~1<CR>", { desc = "Fugitive: reset --hard HEAD~1", silent = true })

