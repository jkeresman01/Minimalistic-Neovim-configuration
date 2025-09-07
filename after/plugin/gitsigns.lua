----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: gitsigns.lua
-- Description: Git signs and actions (preview/stage/reset hunks, etc.)
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Setup
--
-- Configure gitsigns appearance and behavior.
--
----------------------------------------------------------------------------
require("gitsigns").setup({
    signs = {
        add          = { text = "│" },
        change       = { text = "│" },
        delete       = { text = "_" },
        topdelete    = { text = "‾" },
        changedelete = { text = "~" },
        untracked    = { text = "┆" },
    },
    signcolumn = true,
    numhl = false,
    linehl = false,
    word_diff = false,
    watch_gitdir = { follow_files = true },
    auto_attach = true,
    attach_to_untracked = false,

    current_line_blame = false,
    current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
        delay = 1000,
        ignore_whitespace = false,
        virt_text_priority = 100,
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",

    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil,
    max_file_length = 40000,

    preview_config = {
        border = "single",
        style = "minimal",
        relative = "cursor",
        row = 0,
        col = 1,
    },
})

----------------------------------------------------------------------------
--
-- Keymaps
--
-- <leader>ph  : Preview hunk
-- <leader>sh  : Stage hunk
-- <leader>rh  : Reset hunk
-- <leader>ush : Undo stage hunk
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<leader>ph", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Gitsigns: preview hunk",     silent = true })
vim.keymap.set("n", "<leader>sh", "<cmd>Gitsigns stage_hunk<CR>",   { desc = "Gitsigns: stage hunk",       silent = true })
vim.keymap.set("n", "<leader>rh", "<cmd>Gitsigns reset_hunk<CR>",   { desc = "Gitsigns: reset hunk",       silent = true })
vim.keymap.set("n", "<leader>ush","<cmd>Gitsigns undo_stage_hunk<CR>", { desc = "Gitsigns: undo stage",   silent = true })

