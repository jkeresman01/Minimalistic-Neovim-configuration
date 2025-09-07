----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: lualine.lua
-- Description: Adds a really cool statusline at the bottom. You'll see.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Setup
--
-- Configure lualine (statusline) appearance and layout.
--
----------------------------------------------------------------------------
require("lualine").setup({

    ------------------------------------------------------------------------
    --
    -- Options
    -- Theme, separators, refresh rate, and general behavior.
    --
    ------------------------------------------------------------------------
    options = {
        icons_enabled = true,
        theme = "nightfly",
        component_separators = { left = "", right = "" },
        section_separators   = { left = "", right = "" },

        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },

        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,

        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        },
    },

    ------------------------------------------------------------------------
    --
    -- Sections
    -- What appears in each region of the active statusline.
    --
    ------------------------------------------------------------------------
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
    },

    ------------------------------------------------------------------------
    --
    -- Inactive Sections
    -- A simpler layout for windows that are not focused.
    --
    ------------------------------------------------------------------------
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
    },

    ------------------------------------------------------------------------
    --
    -- Tabline / Winbar / Extensions
    -- Leave empty or extend as needed.
    --
    ------------------------------------------------------------------------
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
})

