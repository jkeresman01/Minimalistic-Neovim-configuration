----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: packer.lua
-- Description: Central place to declare and manage plugins with packer.nvim.
--              When you want to add a new plugin, start here.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    ------------------------------------------------------------------------
    --
    -- Packer can manage itself
    --
    ------------------------------------------------------------------------
    use("wbthomason/packer.nvim")

    ------------------------------------------------------------------------
    --
    -- Core UI / Editing Enhancements
    --
    -- rstacruz/vim-closer        : Auto-close brackets, quotes, etc.
    -- techtuner/aura-neovim      : Colorscheme.
    -- stevearc/oil.nvim          : File explorer as an editable buffer.
    -- tpope/vim-commentary       : Comment/uncomment motions.
    --
    ------------------------------------------------------------------------
    use("rstacruz/vim-closer")
    use("techtuner/aura-neovim")
    use("stevearc/oil.nvim")
    use("tpope/vim-commentary")

    ------------------------------------------------------------------------
    --
    -- Telescope (Fuzzy Finding) and Dependencies
    --
    -- nvim-telescope/telescope.nvim : Fuzzy finder (files, grep, buffers).
    -- nvim-lua/plenary.nvim         : Lua utility library (dependency).
    -- nvim-lua/popup.nvim           : Popup API shim (legacy dep for some plugins).
    --
    ------------------------------------------------------------------------
    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        requires = { { "nvim-lua/plenary.nvim" } },
    })
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")

    ------------------------------------------------------------------------
    --
    -- Treesitter (Syntax / Parsing)
    --
    -- nvim-treesitter/nvim-treesitter : Incremental parsing and highlighting.
    -- nvim-treesitter/playground      : Inspect treesitter trees.
    --
    ------------------------------------------------------------------------
    use("nvim-treesitter/playground")
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

    ------------------------------------------------------------------------
    --
    -- LSP / Completion Stack
    --
    -- VonHeikemen/lsp-zero.nvim      : Batteries-included LSP setup.
    -- williamboman/mason.nvim        : LSP/DAP/Formatter installer.
    -- williamboman/mason-lspconfig   : Mason <-> lspconfig bridge.
    -- neovim/nvim-lspconfig          : LSP client configurations.
    -- hrsh7th/nvim-cmp               : Completion engine.
    -- hrsh7th/cmp-nvim-lsp           : LSP source for nvim-cmp.
    -- L3MON4D3/LuaSnip               : Snippet engine.
    --
    ------------------------------------------------------------------------
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        },
    })

    ------------------------------------------------------------------------
    --
    -- Statusline / Diagnostics / Git
    --
    -- nvim-lualine/lualine.nvim  : Statusline.
    -- folke/trouble.nvim         : Quickfix/diagnostics list UI.
    -- lewis6991/gitsigns.nvim    : Git hunks, signs and actions.
    -- tpope/vim-fugitive         : Git porcelain inside Vim.
    --
    ------------------------------------------------------------------------
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })
    use({ "folke/trouble.nvim", cmd = "Trouble" })
    use("lewis6991/gitsigns.nvim")
    use("tpope/vim-fugitive")

    ------------------------------------------------------------------------
    --
    --  Navigation
    --
    -- ThePrimeagen/harpoon          : Quick file marks and navigation.
    -- jkeresman01/active-files.nvim : Ctrl+Tab-like file switcher.
    -- jkeresman01/tmux-switch.nvim  : Switch or create tmux sessions.
    --
    ------------------------------------------------------------------------
    use("ThePrimeagen/harpoon")
    use("jkeresman01/active-files.nvim")
    use("jkeresman01/tmux-switch.nvim")

    ------------------------------------------------------------------------
    --
    -- jkeresman01/dontuse.nvim      : Colorscheme
    --
    ------------------------------------------------------------------------
    use("jkeresman01/dontuse.nvim")

    ------------------------------------------------------------------------
    --
    -- Java / Spring Specific
    --
    -- jkeresman01/java-maven-test.nvim   : Run Maven tests from Neovim.
    -- jkeresman01/java-method-search.nvim: Search Java methods.
    -- jkeresman01/spring-initializr.nvim : Generate Spring Boot projects.
    --
    ------------------------------------------------------------------------
    use("jkeresman01/java-maven-test.nvim")
    use("jkeresman01/java-method-search.nvim")
    use("/home/josip/git/lua/spring-initializr.nvim")
    -- use("jkeresman01/spring-initializr.nvim")

    ------------------------------------------------------------------------
    --
    -- UI Notifications
    --
    -- rcarriga/nvim-notify : Fancy notifications; replaces vim.notify.
    --
    ------------------------------------------------------------------------
    use({
        "rcarriga/nvim-notify",
        config = function()
            require("notify").setup({
                stages = "fade_in_slide_out",
            })
            vim.notify = require("notify")
        end,
    })

    ------------------------------------------------------------------------
    --
    -- UI Frameworks / Building Blocks
    --
    -- MunifTanjim/nui.nvim : UI components used across the TUI.
    --
    ------------------------------------------------------------------------
    use("MunifTanjim/nui.nvim")
end)
